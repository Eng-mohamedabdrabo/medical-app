import 'package:flutter/material.dart';
import 'package:medical_app/features/manager/presentation/views/widgets/manager_employee_view_body.dart';

class ManagerEmployeeView extends StatelessWidget {
  const ManagerEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ManagerEmployeeViewBody()),
    );
  }
}
