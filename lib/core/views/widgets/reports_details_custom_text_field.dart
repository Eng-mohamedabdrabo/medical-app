import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/color_manager.dart';

import '../../../constants.dart';

class ReportsDetailsCustomTextField extends StatelessWidget {
  final String label;
  final EdgeInsetsGeometry contentPadding;
  final BorderRadius borderRadius;
  final Widget? suffix;

  const ReportsDetailsCustomTextField({
    super.key,
    required this.label,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 12.0,
    ),
    this.borderRadius = const BorderRadius.horizontal(
      left: Radius.circular(12),
    ),
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width<800? double.infinity : kBiggerScreensWidth,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: AppStyles.textStyleRegular14(context),
          contentPadding: contentPadding,
          filled: true,
          fillColor: ColorManager.gray.withValues(alpha: 0.1),
          border: OutlineInputBorder(
            borderRadius: borderRadius,
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.1)),
            borderRadius: borderRadius,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.1)),
            borderRadius: borderRadius,
          ),
          suffixIcon: suffix != null ? Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: suffix,
          ) : null,
        ),
      ),
    );
  }
}
