import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';

class ReportsDetailsEndButton extends StatelessWidget {
  const ReportsDetailsEndButton({
    super.key, this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const ShapeDecoration(
          color: ColorManager.brightRed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(12),
            ),
          ),
        ),
        child: Text(
          'End',
          style: AppStyles.textStyleRegular12(context).copyWith(
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
