import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomSelectSomeOneContainer extends StatelessWidget {
  const CustomSelectSomeOneContainer({
    super.key, required this.empName,
  });
  final String empName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: ColorManager.gray.withValues(alpha: 0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            empName,
            style: AppStyles.textStyleRegular14(context)
                .copyWith(color: ColorManager.gray.withValues(alpha: 0.8)),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_right,
            color: ColorManager.gray.withValues(alpha: 0.8),
          ),
        ],
      ),
    );
  }
}
