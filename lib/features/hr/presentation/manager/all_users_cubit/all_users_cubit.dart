import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'all_users_state.dart';

class AllUsersCubit extends Cubit<AllUsersState> {
  AllUsersCubit() : super(AllUsersInitial());
}
