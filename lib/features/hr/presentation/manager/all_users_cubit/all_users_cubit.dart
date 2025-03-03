import 'package:bloc/bloc.dart';
import '../../../data/models/all_users_model.dart';
import '../../../data/repos/all_users_repo.dart';

part 'all_users_state.dart';

class AllUsersCubit extends Cubit<AllUsersState> {
  final AllUserRepository allUserRepository;

  List<AllUsersModel> allUsers = [];
  List<AllUsersModel> displayedUsers = [];
  AllUsersModel? selectedDoctor;

  AllUsersCubit(this.allUserRepository) : super(AllUsersInitialState());

  Future<void> getAllUsers() async {
    emit(AllUsersLoadingState());

    List<String> userTypes = ['doctor', 'hr', 'receptionist', 'Analysis', 'manger', 'Nurse'];

    try {
      List<AllUsersModel> users = [];
      for (String type in userTypes) {
        final fetchedUsers = await allUserRepository.getUsers(type: type);
        users.addAll(fetchedUsers);
      }

      allUsers = users;
      displayedUsers = users;

      emit(AllUsersSuccessState(allUsers: displayedUsers));
    } catch (e) {
      emit(AllUsersFailureState(errMessage: 'Error: ${e.toString()}'));
    }
  }

  Future<void> getFilteredUsers({required String type}) async {
    emit(AllUsersLoadingState());

    try {
      final users = await allUserRepository.getUsers(type: type);
      displayedUsers = users;
      emit(AllUsersFilteredState(allUsers: displayedUsers));
    } catch (e) {
      emit(AllUsersFailureState(errMessage: 'Error: ${e.toString()}'));
    }
  }

  void searchEmployee(String query) {
    if (query.isEmpty) {
      emit(AllUsersSuccessState(allUsers: displayedUsers));
      return;
    }

    final filteredUsers = displayedUsers.where((user) {
      return user.firstName.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(AllUsersSearchState(filteredUsers: filteredUsers));
  }

  Future<void> getDoctorsOnly() async {
    emit(AllUsersLoadingState());

    try {
      final users = await allUserRepository.getUsers(type: 'doctor');
      displayedUsers = users;
      emit(AllUsersFilteredState(allUsers: displayedUsers));
    } catch (e) {
      emit(AllUsersFailureState(errMessage: 'Error: ${e.toString()}'));
    }
  }

  void searchDoctor(String query) {
    if (query.isEmpty) {
      emit(AllUsersFilteredState(allUsers: displayedUsers));
      return;
    }

    final filteredDoctors = displayedUsers.where((doctor) {
      return doctor.firstName.toLowerCase().contains(query.toLowerCase());
    }).toList();

    emit(AllUsersSearchState(filteredUsers: filteredDoctors));
  }

  void selectDoctor(AllUsersModel doctor) {
    selectedDoctor = doctor;
    emit(AllUsersFilteredState(allUsers: displayedUsers));
  }

  void resetDisplayedUsers() {
    displayedUsers = List.from(allUsers);
    emit(AllUsersSuccessState(allUsers: displayedUsers));
  }


}
