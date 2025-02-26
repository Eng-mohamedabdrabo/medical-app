import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomEmployeeFilteringListViewItem extends StatelessWidget {
  const CustomEmployeeFilteringListViewItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: ColorManager.gray.withValues(alpha: 0.2),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        text,
        style: AppStyles.textStyleRegular12(context).copyWith(
          color: ColorManager.black,
        ),
      ),
    );
  }
}
