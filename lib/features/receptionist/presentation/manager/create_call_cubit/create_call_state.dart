part of 'create_call_cubit.dart';

sealed class CreateCallState {}

final class CreateCallInitialState extends CreateCallState {}

final class CreateCallLoadingState extends CreateCallState {}

final class CreateCallSuccessState extends CreateCallState {
  final String message;
  CreateCallSuccessState({required this.message});
}

final class CreateCallFailureState extends CreateCallState {
  final String errMessage;
  CreateCallFailureState({required this.errMessage});
}
