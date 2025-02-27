import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../../constants.dart';
import '../utils/color_manager.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final EdgeInsetsGeometry? contentPadding;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  const CustomSearchBar({
    super.key,
    required this.hintText,
    this.leadingIcon,
    this.contentPadding,
    this.onChanged,  this.controller,
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
        onChanged: onChanged,
        decoration: _buildInputDecoration(context),
      ),
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      contentPadding: contentPadding ?? const EdgeInsets.all(16),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.gray.withValues(alpha: 0.3),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: ColorManager.teal,
          width: 1.5,
        ),
      ),
      prefixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SvgPicture.asset(
              AppAssets.imagesSearch,
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(width: 8),
          if (leadingIcon != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SvgPicture.asset(leadingIcon!),
            ),
        ],
      ),
      hintText: hintText,
      hintStyle: AppStyles.textStyleRegular14(context).copyWith(
        color: ColorManager.gray.withValues(alpha: 0.8),
      ),
    );
  }
}
