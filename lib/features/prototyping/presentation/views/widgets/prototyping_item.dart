import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class PrototypingItem extends StatelessWidget {
  const PrototypingItem({
    super.key,
    required this.text,
    this.textStyle,
    this.onTap,
    this.backgroundColor,
  });

  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            color: backgroundColor ?? Colors.transparent,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: ColorManager.gray,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: textStyle ??
                  AppStyles.textStyleRegular14(context).copyWith(
                    color: ColorManager.teal,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
