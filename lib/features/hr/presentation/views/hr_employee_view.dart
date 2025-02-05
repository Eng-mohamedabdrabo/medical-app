import 'package:flutter/material.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_employee_view_body.dart';

class HrEmployeeView extends StatelessWidget {
  const HrEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HrEmployeeViewBody(),
      ),
    );
  }
}
