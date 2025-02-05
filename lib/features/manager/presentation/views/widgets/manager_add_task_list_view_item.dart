import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/utils/assets.dart';

class ManagerAddTaskListViewItem extends StatelessWidget {
  const ManagerAddTaskListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesRemove),
        SizedBox(width: 6,),
        Text('Hello this is a new task here!'),
      ],
    );
  }
}
