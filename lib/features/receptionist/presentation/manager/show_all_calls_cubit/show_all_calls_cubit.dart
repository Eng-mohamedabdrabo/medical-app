import 'package:bloc/bloc.dart';

import '../../../data/models/show_all_calls_model.dart';
import '../../../data/repos/show_all_calls_repsitory.dart';

part 'show_all_calls_state.dart';

class ShowAllCallsCubit extends Cubit<ShowAllCallsState> {
  ShowAllCallsCubit() : super(ShowAllCallsInitialState());
  final ShowAllCallsRepository allCallsRepository = ShowAllCallsRepository();

  Future<void> getAllCalls() async {
    emit(ShowAllCallsLoadingState());
    try {
      final allCalls = await allCallsRepository.getAllCalls();
      emit(ShowAllCallsSuccessState(allCalls: allCalls));
    } catch (e) {
      emit(ShowAllCallsFailureState(errMessage: 'Error: ${e.toString()}'));
    }
  }

  // Future<void> getFilteredUsers({required String date}) async {
  //   emit(ShowAllCallsLoadingState());
  //
  //   try {
  //     final users = await allCallsRepository.getFilteredUsers(date: date);
  //     emit(ShowAllCallsFilteredState(filteredCalls: filteredCalls));
  //   } catch (e) {
  //     emit(AllUsersFailureState(errMessage: 'Error: ${e.toString()}'));
  //   }
  // }
}
