import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class AddMeasurementContainer extends StatelessWidget {
  const AddMeasurementContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
              color: ColorManager.gray.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            Text(
              'Add Measurement',
              style: AppStyles.textStyleRegular10(context).copyWith(
                color: ColorManager.gray.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Icon(
              Icons.add,
              color: ColorManager.gray.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
