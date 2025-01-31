import 'package:flutter/material.dart';

import 'doctor_case_details_analysis_list_view_item.dart';

class DoctorCaseDetailsAnalysisListView extends StatelessWidget {
  const DoctorCaseDetailsAnalysisListView({super.key});

  static const List<String> items = [
    'Case',
    'Medical Record',
    'Medical Measurement',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items
          .map(
            (e) => IntrinsicWidth(
            child: DoctorCaseDetailsAnalysisListViewItem(
              text: e,
            )),
      )
          .toList(),
    );
  }
}