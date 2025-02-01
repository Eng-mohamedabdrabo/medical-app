import 'package:flutter/material.dart';
import '../../../../doctor/presentation/views/widgets/doctor_case_details_analysis_list_view_item.dart';

class NurseCaseDetailsAnalysisListView extends StatelessWidget {
  const NurseCaseDetailsAnalysisListView({super.key});

  static const List<String> items = [
    'Case',
    'Medical Measurement',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (e) => IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: DoctorCaseDetailsAnalysisListViewItem(
                text: e,
              ),
            )),
      )
          .toList(),
    );
  }
}