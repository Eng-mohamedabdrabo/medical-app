import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class NurseMeasurementResultRow extends StatelessWidget {
  const NurseMeasurementResultRow({
    super.key,
    required this.requirement,
  });

  final String requirement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 55,
            padding: EdgeInsets.all(8),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: BorderSide(
                  width: 1,
                  color: ColorManager.gray.withValues(alpha: 0.2),
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  requirement,
                  style: AppStyles.textStyleRegular10(context).copyWith(
                    color: ColorManager.black,
                    fontWeight:FontWeight.w600
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_drop_down_outlined),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTextFormField(hintText: 'Add Value'),
        )
      ],
    );
  }
}
