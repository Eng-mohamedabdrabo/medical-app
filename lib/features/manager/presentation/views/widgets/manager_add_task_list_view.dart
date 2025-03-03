import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../manager/create_task_cubit/create_task_cubit.dart';
import 'manager_add_task_list_view_item.dart';

class ManagerAddTaskListView extends StatelessWidget {
  const ManagerAddTaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<CreateTaskCubit>().todos;

    return ListView.builder(
      itemCount: todos.length,
      itemBuilder: (context, index) {
        return ManagerAddTaskListViewItem(todo: todos[index], index: index);
      },
    );
  }
}
