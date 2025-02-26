import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/profile_model.dart';
import '../../../data/models/login.dart';
import '../../../data/repos/auth_repository.dart';
import 'register_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository authRepository;
  int? userId;
  ProfileModel? profileModel;

  AuthCubit(this.authRepository) : super(AuthInitial());

  Future<void> login({
    required String email,
    required String password,
    required String deviceToken,
    required String type,
  }) async {
    emit(AuthLoading());
    try {
      LoginModel loginModel = await authRepository.login(
        email: email,
        password: password,
        deviceToken: deviceToken,
        type: type,
      );

      userId = loginModel.data.id;
      emit(AuthSuccess(loginModel));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> register({
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
    emit(AuthLoading());
    try {
      RegisterModel registerModel = await authRepository.register(
        firstName: firstName,
        lastName: lastName,
        mobile: mobile,
        email: email,
        password: password,
        gender: gender,
        status: status,
        specialist: specialist,
        type: type,
        birthday: birthday,
        address: address,
      );

      userId = registerModel.data.id;
      emit(RegisterSuccess(registerModel));
    } catch (e) {
      emit(AuthFailure(e.toString()));
    }
  }

  Future<void> showProfile({required int userId}) async {
    this.userId = userId;
    emit(ProfileLoading());
    try {
      ProfileModel profileModel = await authRepository.showProfile(userId: userId);
      emit(ProfileSuccess(profileModel));
    } catch (e) {
      emit(ProfileFailure(e.toString()));
    }
  }
}
