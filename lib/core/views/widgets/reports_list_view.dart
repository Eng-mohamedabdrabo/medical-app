import 'package:flutter/cupertino.dart';
import 'package:medical_app/core/views/widgets/tasks_list_view_item.dart';

class ReportsListView extends StatelessWidget {
  const ReportsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:5 ,itemBuilder: (context,index)=>Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TasksAndReportsListViewItem(),
    ));
  }
}
