import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/reports_details_body.dart';

class ReportsDetailsView extends StatelessWidget {
  const ReportsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReportsDetailsBody(),
      ),
    );
  }
}


