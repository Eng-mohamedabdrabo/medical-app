import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/assets.dart';

class ManagerAddTaskListViewItem extends StatelessWidget {
  const ManagerAddTaskListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesRemove),
        const SizedBox(width: 6,),
        const Text('Hello this is a new task here!'),
      ],
    );
  }
}
