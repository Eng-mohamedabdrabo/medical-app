import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'tasks_and_reports_list_view_item.dart';
import '../../utils/app_router.dart';

class ReportsListView extends StatelessWidget {
  const ReportsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:5 ,itemBuilder: (context,index)=>Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
          onTap: (){ GoRouter.of(context).push(AppRouter.kReportsDetailsView);
          },
          child: const TasksAndReportsListViewItem()),
    ));
  }
}
