import 'package:flutter/material.dart';
import 'widgets/manager_employee_view_body.dart';

class ManagerEmployeeView extends StatelessWidget {
  const ManagerEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ManagerEmployeeViewBody()),
    );
  }
}
