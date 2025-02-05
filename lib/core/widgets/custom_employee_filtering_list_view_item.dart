import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/color_manager.dart';

class CustomEmployeeFilteringListViewItem extends StatelessWidget {
  const CustomEmployeeFilteringListViewItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: ShapeDecoration(shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          color: ColorManager.gray.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.circular(4),
      ),),
      child: Text(text , style: AppStyles.textStyleRegular12(context).copyWith(
        color:ColorManager.black,
      ),),
    );
  }
}
