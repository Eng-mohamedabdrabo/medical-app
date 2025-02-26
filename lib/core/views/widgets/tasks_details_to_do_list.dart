import 'package:flutter/cupertino.dart';
import 'tasks_details_to_do_item.dart';

class TasksDetailsToDoList extends StatelessWidget {
  const TasksDetailsToDoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
            (index) => const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: TasksDetailsToDoItem(),
        ),
      ),
    );
  }
}
