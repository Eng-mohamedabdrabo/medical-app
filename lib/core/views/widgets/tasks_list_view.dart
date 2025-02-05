import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/core/views/widgets/tasks_and_reports_list_view_item.dart';

import '../../utils/app_router.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: InkWell(
          onTap: onTap??() {
            GoRouter.of(context).push(AppRouter.kTasksDetailsView);
          },
          child: TasksAndReportsListViewItem(),
        ),
      ),
    );
  }
}
