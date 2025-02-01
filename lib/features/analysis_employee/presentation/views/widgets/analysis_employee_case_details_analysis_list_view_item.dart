import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class AnalysisEmployeeCaseDetailsAnalysisListViewItem extends StatelessWidget {
  const AnalysisEmployeeCaseDetailsAnalysisListViewItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: ColorManager.gray.withValues(
              alpha: 0.2,
            ),
          ),
          borderRadius: BorderRadius.circular(3),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.textStyleRegular10(context).copyWith(
            color: ColorManager.black,
          ),
        ),
      ),
    );
  }
}
