import 'package:flutter/material.dart';
import 'analysis_employee_cases_requests_list_view_item.dart';

class AnalysisEmployeeCasesRequestsListView extends StatelessWidget {
  const AnalysisEmployeeCasesRequestsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:4 ,itemBuilder: (context, index)=> Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: AnalysisEmployeeCasesRequestsListViewItem(),
    ) ,);
  }
}
