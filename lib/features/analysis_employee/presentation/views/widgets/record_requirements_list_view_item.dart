import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class RecordRequirementsListViewItem extends StatelessWidget {
  const RecordRequirementsListViewItem({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorManager.teal, borderRadius: BorderRadius.circular(8)),
      child: Text(
        text,
        style: AppStyles.textStyleRegular10(context).copyWith(
          color: ColorManager.white,
        ),
      ),
    );
  }
}
