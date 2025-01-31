import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/select_doctor_list_view_item.dart';

class SelectDoctorListView extends StatelessWidget {
  const SelectDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: SelectDoctorListViewItem(),
      ),
    );
  }
}
