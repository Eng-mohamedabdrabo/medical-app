import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles.dart';
import '../../constants.dart';
import '../utils/color_manager.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final IconData? trailingIcon;
  final EdgeInsetsGeometry? contentPadding;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final Iterable<String>? autofillHints;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.contentPadding,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.autofillHints,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width < 800
          ? double.infinity
          : kBiggerScreensWidth,
      child: TextFormField(
        controller: controller,
        cursorColor: ColorManager.teal,
        style: const TextStyle(color: ColorManager.teal),
        maxLines: obscureText ? 1 : null,
        textAlignVertical: TextAlignVertical.top,
        keyboardType: keyboardType,
        obscureText: obscureText,
        autofillHints: autofillHints,
        decoration: _buildInputDecoration(context),
        validator: validator,
      ),
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: contentPadding ?? const EdgeInsets.all(16),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelText: hintText,
      labelStyle: AppStyles.textStyleRegular14(context).copyWith(
        color: ColorManager.gray.withOpacity(0.8),
      ),
      filled: backgroundColor != null,
      fillColor: backgroundColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.gray.withOpacity(0.3),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: ColorManager.teal,
          width: 1.5,
        ),
      ),
      prefixIcon: leadingIcon != null
          ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
      suffixIcon: trailingIcon != null
          ? Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(
          trailingIcon,
          color: ColorManager.gray.withOpacity(0.8),
        ),
      )
          : null,
    );
  }
}
