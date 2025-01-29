import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_styles.dart';

import '../../constants.dart';
import '../utils/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width<800? double.infinity : kBiggerScreensWidth,
      child: TextFormField(
        cursorColor: ColorManager.teal,
        style: const TextStyle(color: ColorManager.teal),
        decoration: buildInputDecoration(context),
      ),
    );
  }

  InputDecoration buildInputDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      hintText: hintText,
      hintStyle: AppStyles.textStyleRegular14(context),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: ColorManager.gray),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: ColorManager.teal),
      ),
      prefixIcon: leadingIcon != null
          ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        // Add horizontal padding
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(leadingIcon!),
            const SizedBox(width: 8),
            Container(
              height: 24,
              width: 1,
              color: ColorManager.teal,
            ),
            const SizedBox(width: 8),
          ],
        ),
      )
          : null,
    );
  }
}