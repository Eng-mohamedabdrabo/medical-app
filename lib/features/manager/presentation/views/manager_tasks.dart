import 'package:flutter/material.dart';
import 'widgets/manager_tasks_body.dart';

class ManagerTasksView extends StatelessWidget {
  const ManagerTasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ManagerTasksBody(),
        ),
      ),
    );
  }
}
