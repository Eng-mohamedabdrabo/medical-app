part of 'all_users_cubit.dart';
sealed class AllUsersState {}

final class AllUsersInitialState extends AllUsersState {}
final class AllUsersSuccessState extends AllUsersState {
  final List<AllUsersModel> allUsers;

  AllUsersSuccessState({required this.allUsers});
}

final class AllUsersFailureState extends AllUsersState {
  final String errMessage;

  AllUsersFailureState({required this.errMessage});
}

final class AllUsersFilteredState extends AllUsersState {
  final List<AllUsersModel> allUsers;

  AllUsersFilteredState({required this.allUsers});
}

final class AllUsersLoadingState extends AllUsersState {}
final class AllUsersSearchState extends AllUsersState {
  final List<AllUsersModel> filteredUsers;

  AllUsersSearchState({required this.filteredUsers});
}