import 'package:flutter/material.dart';
import 'widgets/tasks_details_body.dart';


class TasksDetailsView extends StatelessWidget {
  const TasksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: TasksDetailsBody(),
        ),
      ),
    );
  }
}

