import 'package:flutter/material.dart';
import 'package:medical_app/features/manager/presentation/views/widgets/manager_tasks_body.dart';

class ManagerTasksView extends StatelessWidget {
  const ManagerTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ManagerTasksBody(),
        ),
      ),
    );
  }
}
