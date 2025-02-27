import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../hr/presentation/manager/all_users_cubit/all_users_cubit.dart';
import 'select_doctor_list_view_item.dart';

class SelectDoctorListView extends StatelessWidget {
  const SelectDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllUsersCubit, AllUsersState>(
      builder: (context, state) {
        if (state is AllUsersFilteredState) {
          return ListView.builder(
            itemCount: state.allUsers.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SelectDoctorListViewItem(doctor: state.allUsers[index]), // تمرير الطبيب هنا
            ),
          );
        } else if (state is AllUsersFailureState) {
          return const Center(child: Text('Failed to load doctors'));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
