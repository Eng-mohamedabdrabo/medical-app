import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../constants.dart';


class NurseAddMeasurementTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final String label;
  final EdgeInsetsGeometry contentPadding;
  final TextEditingController controller;
  const NurseAddMeasurementTextField({
    super.key,
    required this.label,
    this.contentPadding = const EdgeInsets.symmetric(
        horizontal: 16.0, vertical: 12.0), required this.controller, this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width < 800
          ? double.infinity
          : kBiggerScreensWidth,
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: AppStyles.textStyleRegular14(context),
          contentPadding: contentPadding,
          filled: true,
          fillColor: ColorManager.gray.withValues(alpha: 0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.0),),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.0),),
            borderRadius: BorderRadius.circular(12.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: ColorManager.gray.withValues(alpha: 0.0),),
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
