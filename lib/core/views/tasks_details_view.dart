import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/tasks_details_body.dart';


class TasksDetailsView extends StatelessWidget {
  const TasksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
          child: TasksDetailsBody(),
        ),
      ),
    );
  }
}

