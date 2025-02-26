import 'package:flutter/material.dart';
import 'widgets/manager_add_task_view_body.dart';

class ManagerAddTaskView extends StatelessWidget {
  const ManagerAddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: ManagerAddTaskViewBody(),
      )),
    );
  }
}
