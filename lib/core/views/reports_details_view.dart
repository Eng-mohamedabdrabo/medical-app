import 'package:flutter/material.dart';
import 'widgets/reports_details_body.dart';

class ReportsDetailsView extends StatelessWidget {
  const ReportsDetailsView({super.key,});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: ReportsDetailsBody(),
      ),
    );
  }
}


