import 'package:flutter/material.dart';

import 'doctor_select_nurse_list_view_item.dart';

class DoctorSelectNurseListView extends StatelessWidget {
  const DoctorSelectNurseListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 24.0),
        child: DoctorSelectNurseListViewItem(),
      ),
    );
  }
}
