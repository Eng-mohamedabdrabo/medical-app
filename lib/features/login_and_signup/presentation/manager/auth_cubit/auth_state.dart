part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final LoginModel loginModel;

  const AuthSuccess(this.loginModel);

  @override
  List<Object> get props => [loginModel];
}

class AuthFailure extends AuthState {
  final String errorMessage;

  const AuthFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class ProfileLoading extends AuthState {}

class ProfileSuccess extends AuthState {
  final ProfileModel profileModel;

  const ProfileSuccess(this.profileModel);

  @override
  List<Object> get props => [profileModel];
}

class ProfileFailure extends AuthState {
  final String errorMessage;

  const ProfileFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

class RegisterSuccess extends AuthState {
  final RegisterModel registerModel;

  const RegisterSuccess(this.registerModel);

  @override
  List<Object> get props => [registerModel];
}
