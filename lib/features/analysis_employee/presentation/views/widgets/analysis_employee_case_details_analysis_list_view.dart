import 'package:flutter/material.dart';
import 'package:medical_app/features/analysis_employee/presentation/views/widgets/analysis_employee_case_details_analysis_list_view_item.dart';

class AnalysisEmployeeCaseDetailsAnalysisListView extends StatelessWidget {
  const AnalysisEmployeeCaseDetailsAnalysisListView({super.key});

  static const List<String> items = [
    'Case',
    'Medical Record',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (e) => IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: AnalysisEmployeeCaseDetailsAnalysisListViewItem(
                text: e,
              ),
            )),
      )
          .toList(),
    );
  }
}