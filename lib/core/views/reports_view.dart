import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/reports_view_body.dart';


class ReportsView extends StatelessWidget {
  const ReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ReportsViewBody()),
    );
  }
}

