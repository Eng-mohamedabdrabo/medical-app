import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomEmployeeFilteringListViewItem extends StatelessWidget {
  const CustomEmployeeFilteringListViewItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Notify parent when clicked
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: isSelected ? ColorManager.teal : ColorManager.white,
        ),
        child: Text(
          text,
          style: AppStyles.textStyleRegular12(context).copyWith(
            color: isSelected ? ColorManager.white : ColorManager.teal,
          ),
        ),
      ),
    );
  }
}
