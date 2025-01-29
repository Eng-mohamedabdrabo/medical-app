import 'package:flutter/material.dart';

import '../../constants.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key, required this.text, this.backGroundColor, this.textColor,
  });
final String text;
final Color? backGroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width<800? double.infinity : kBiggerScreensWidth,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor??ColorManager.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          // Add button logic here
        },
        child: Text(
          text,
          style: AppStyles.textStyleMedium16(context).copyWith(
            color: textColor??ColorManager.white,
            fontWeight:FontWeight.w400
          ),
        ),
      ),
    );
  }
}
