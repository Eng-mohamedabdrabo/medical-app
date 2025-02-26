import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';

class TaskDetailsTaskName extends StatelessWidget {
  const TaskDetailsTaskName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width < 800
          ? double.infinity
          : kBiggerScreensWidth,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorManager.gray.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Text(
            'Task Name',
            style: AppStyles.textStyleRegular14(context),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
