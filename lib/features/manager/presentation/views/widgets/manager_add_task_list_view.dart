import 'package:flutter/material.dart';
import 'package:medical_app/features/manager/presentation/views/widgets/manager_add_task_list_view_item.dart';

class ManagerAddTaskListView extends StatelessWidget {
  const ManagerAddTaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:3,itemBuilder: (context , index)=>ManagerAddTaskListViewItem());
  }
}
