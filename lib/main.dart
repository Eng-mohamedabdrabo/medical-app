import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/theme_manager.dart';

import 'features/analysis_employee/presentation/views/analysis_employee_add_medical_report_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Medical App',
      theme: ThemeManager.getAppTheme(),
      home: AnalysisEmployeeAddMedicalReportView(),
    );
  }
}
