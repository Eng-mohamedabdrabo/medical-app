import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'tasks_details_to_do_list.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class TasksDetailsToDoItems extends StatelessWidget {
  const TasksDetailsToDoItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height:MediaQuery.sizeOf(context).height*0.13,
          child: SvgPicture.asset(
            AppAssets.containerDottedDecoration,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(width: 16),

        // Content Column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'To do',
                style: AppStyles.textStyleSemiBold14(context)
                    .copyWith(
                  color: ColorManager.black,
                ),
              ),
              const SizedBox(height: 16),
              const SizedBox(height:100,child: TasksDetailsToDoList()),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
