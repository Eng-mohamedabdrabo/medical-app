import 'package:flutter/material.dart';
import 'doctor_calls_list_view_item.dart';

class DoctorCallsListView extends StatelessWidget {
  const DoctorCallsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(top: 24.0),
        child: DoctorCallsListViewItem(),
      ),
    );
  }
}
