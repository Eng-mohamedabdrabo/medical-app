import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class MeasurementRequirementsListViewItem extends StatelessWidget {
  const MeasurementRequirementsListViewItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorManager.teal, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text,
          style: AppStyles.textStyleRegular12(context).copyWith(
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
