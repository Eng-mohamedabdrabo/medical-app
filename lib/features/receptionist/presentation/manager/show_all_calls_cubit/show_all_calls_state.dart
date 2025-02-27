part of 'show_all_calls_cubit.dart';

sealed class ShowAllCallsState {}

final class ShowAllCallsInitialState extends ShowAllCallsState {}
final class ShowAllCallsLoadingState extends ShowAllCallsState {}

final class ShowAllCallsSuccessState extends ShowAllCallsState {
  final List<ShowAllCallsModel> allCalls;

  ShowAllCallsSuccessState({required this.allCalls});
}

final class ShowAllCallsFailureState extends ShowAllCallsState {
  final String errMessage;

  ShowAllCallsFailureState({required this.errMessage});

}

final class ShowAllCallsFilteredState extends ShowAllCallsState {
  final List<ShowAllCallsModel> filteredCalls;

  ShowAllCallsFilteredState({required this.filteredCalls});
}