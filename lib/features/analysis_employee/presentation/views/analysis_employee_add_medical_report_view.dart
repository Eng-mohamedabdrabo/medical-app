import 'package:flutter/material.dart';
import 'widgets/analysis_employee_add_medical_report_view_body.dart';

class AnalysisEmployeeAddMedicalReportView extends StatelessWidget {
  const AnalysisEmployeeAddMedicalReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: AnalysisEmployeeAddMedicalReportViewBody()),
    );
  }
}
