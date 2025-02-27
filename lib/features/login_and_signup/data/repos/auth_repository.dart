import '../../../../core/network/dio_helper.dart';
import '../../presentation/manager/auth_cubit/register_model.dart';
import '../models/profile_model.dart';
import '../models/login.dart';

class AuthRepository {
  Future<LoginModel> login({
    required String email,
    required String password,
    required String deviceToken,
    required String type,
  }) async {
    try {
      final response = await DioHelper.postData(
        url: '/login',
        data: {
          'email': email,
          'password': password,
          'device_token': deviceToken,
          'type': type,
        },
      );

      print('Response Data: ${response.data}');

      if (response.data['status'] == 1) {
        LoginModel loginModel = LoginModel.fromJson(response.data);

        await DioHelper.updateToken(loginModel.data.accessToken);

        print('Saved Token: ${loginModel.data.accessToken}');

        return loginModel;
      } else {
        throw Exception(response.data['message'] ?? 'Login failed');
      }
    } catch (e) {
      throw Exception('An error occurred: ${e.toString()}');
    }
  }

  Future<RegisterModel> register({
    required String firstName,
    required String lastName,
    required String mobile,
    required String email,
    required String password,
    required String gender,
    required String status,
    required String specialist,
    required String type,
    required String birthday,
    required String address,
  }) async {
    try {
      final response = await DioHelper.postData(
        url: '/register',
        data: {
          'first_name': firstName,
          'last_name': lastName,
          'mobile': mobile,
          'email': email,
          'password': password,
          'gender': gender,
          'status': status,
          'specialist': specialist,
          'type': type,
          'birthday': birthday,
          'address': address,
        },
      );

      print('Register Response Data: ${response.data}');

      if (response.data['status'] == 1) {
        RegisterModel registerModel = RegisterModel.fromJson(response.data);

        await DioHelper.updateToken(registerModel.data.accessToken);

        print('Saved Token: ${registerModel.data.accessToken}');

        return registerModel;
      } else {
        throw Exception(response.data['message'] ?? 'Registration failed');
      }
    } catch (e) {
      throw Exception('An error occurred: ${e.toString()}');
    }
  }

  Future<ProfileModel> showProfile({required int userId}) async {
    try {
      final response = await DioHelper.postData(
        url: '/show-profile',
        data: {'user_id': userId},
      );

      print('User Profile Data: ${response.data}');

      return ProfileModel.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load profile: ${e.toString()}');
    }
  }
}
