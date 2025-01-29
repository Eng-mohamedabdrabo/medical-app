import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/color_manager.dart';

class CreateReportCustomTextFiled extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry contentPadding;

  const CreateReportCustomTextFiled({
    super.key,
    required this.label,
    this.contentPadding =
    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextFormField(
          decoration: InputDecoration(
            contentPadding: contentPadding,
            filled: true,
            fillColor: ColorManager.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: ColorManager.gray.withValues(alpha: 0.3),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.gray.withValues(alpha: 0.3),
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorManager.gray.withValues(alpha: 0.3),
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 8,
          child: Text(
            label,
            style: AppStyles.textStyleRegular14(context).copyWith(
              color: ColorManager.gray,
            ),
          ),
        ),
      ],
    );
  }
}
