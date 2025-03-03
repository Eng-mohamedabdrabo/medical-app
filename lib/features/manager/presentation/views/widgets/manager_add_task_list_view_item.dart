import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets.dart';
import '../../manager/create_task_cubit/create_task_cubit.dart';

class ManagerAddTaskListViewItem extends StatelessWidget {
  final String todo;
  final int index;

  const ManagerAddTaskListViewItem({super.key, required this.todo, required this.index});

  @override
  Widget build(BuildContext context) {
    final createTaskCubit = context.read<CreateTaskCubit>();

    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset(AppAssets.imagesRemove),
          onPressed: () {
            createTaskCubit.removeTodo(index);
          },
        ),
        const SizedBox(width: 6),
        Text(todo),
      ],
    );
  }
}
