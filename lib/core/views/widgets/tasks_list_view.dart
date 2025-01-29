import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/tasks_and_reports_list_view_item.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: TasksAndReportsListViewItem(),
      ),
    );
  }
}
