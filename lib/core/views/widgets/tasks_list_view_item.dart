import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class TasksAndReportsListViewItem extends StatelessWidget {
  const TasksAndReportsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCheck),
              const SizedBox(
                width: 12,
              ),
              Text(
                'Task Name',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.all(2),
                decoration: ShapeDecoration(
                  color: ColorManager.lightTealTransparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                    side: const BorderSide(width: 1, color: ColorManager.teal),
                  ),
                ),
                child: SvgPicture.asset(AppAssets.containerTasksFinished)
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCalender),

              const SizedBox(
                width: 12,
              ),
              Text(
                '24 . 04 . 2021',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),

        ],
      ),
    );
  }
}
