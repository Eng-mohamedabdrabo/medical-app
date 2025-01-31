import 'package:flutter/cupertino.dart';

import 'doctor_cases_list_view_item.dart';

class DoctorCasesListview extends StatelessWidget {
  const DoctorCasesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 9,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: DoctorCasesListViewItem(),
      ),
    );
  }
}
