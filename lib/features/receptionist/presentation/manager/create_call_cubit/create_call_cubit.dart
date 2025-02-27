import 'package:bloc/bloc.dart';

import '../../../data/models/create_call_model.dart';
import '../../../data/repos/create_call_repository.dart';

part 'create_call_state.dart';

class CreateCallCubit extends Cubit<CreateCallState> {
  final CreateCallRepo callsRepository;

  CreateCallCubit(this.callsRepository) : super(CreateCallInitialState());

  Future<void> createCall(CreateCallRequestModel callRequest) async {
    emit(CreateCallLoadingState());
    try {
      final response = await callsRepository.createCall(callRequest);
      emit(CreateCallSuccessState(message: response.message));
    } catch (e) {
      emit(CreateCallFailureState(errMessage: e.toString()));
    }
  }
}
