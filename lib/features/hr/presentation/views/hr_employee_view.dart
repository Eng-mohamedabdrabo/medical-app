import 'package:flutter/material.dart';
import 'widgets/hr_employee_view_body.dart';

class HrEmployeeView extends StatelessWidget {
  const HrEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HrEmployeeViewBody(),
      ),
    );
  }
}
