import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';

class AttendanceNoteWidget extends StatelessWidget {
  const AttendanceNoteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: ColorManager.orange.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Note',
            style: AppStyles.textStyleSemiBold14(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
            style: AppStyles.textStyleRegular12(context).copyWith(
              color: ColorManager.black,
            ),
          ),
        ],
      ),
    );
  }
}
