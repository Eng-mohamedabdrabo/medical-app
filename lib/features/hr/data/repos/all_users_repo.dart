import '../models/all_users_model.dart';
import '../../../../core/network/dio_helper.dart';

class AllUserRepository {
  Future<List<AllUsersModel>> getUsers({required String type}) async {
    try {
      final response = await DioHelper.getData(url: '/doctors', query: {'type': type});

      if (response.data['status'] == 1) {
        List<dynamic> data = response.data['data'];
        return data.map((user) => AllUsersModel.fromJson(user)).toList();
      } else {
        throw Exception("Failed to load users");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<AllUsersModel>> getFilteredUsers({required String type}) async {
    try {
      final response = await DioHelper.getData(url: '/doctors', query: {'type': type});

      if (response.data['status'] == 1) {
        List<dynamic> data = response.data['data'];
        return data.map((user) => AllUsersModel.fromJson(user)).toList();
      } else {
        throw Exception("Failed to load users");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

}
