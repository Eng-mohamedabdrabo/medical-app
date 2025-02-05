import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class DoctorCaseDetailsAnalysisListViewItem extends StatelessWidget {
  const DoctorCaseDetailsAnalysisListViewItem({
    super.key,
    required this.text,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: isSelected ? ColorManager.teal : Colors.transparent,
        border: Border.all(
          color: isSelected ? ColorManager.teal : ColorManager.gray,
        ),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: AppStyles.textStyleRegular10(context).copyWith(
          color: isSelected ? ColorManager.white : ColorManager.black,
        ),
      ),
    );
  }
}
