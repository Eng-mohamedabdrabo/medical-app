import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/assets.dart';
import '../../constants.dart';
import '../utils/color_manager.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final EdgeInsetsGeometry? contentPadding;

  const CustomSearchBar({
    super.key,
    required this.hintText,
    this.leadingIcon,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width < 800
          ? double.infinity
          : kBiggerScreensWidth,
      child: contentPadding != null
          ? Stack(
        alignment: Alignment.topLeft,
        children: [
          TextFormField(
            cursorColor: ColorManager.teal,
            style: const TextStyle(color: ColorManager.teal),
            decoration: _buildInputDecoration(context),
          ),
          Positioned(
            left: 18,
            top: 8,
            child: Text(
              hintText,
              style: AppStyles.textStyleRegular14(context).copyWith(
                color: ColorManager.gray.withValues(alpha: 0.8),
              ),
            ),
          ),
        ],
      )
          : TextFormField(
        cursorColor: ColorManager.teal,
        style: const TextStyle(color: ColorManager.teal),
        decoration: _buildInputDecoration(context).copyWith(
          hintText: hintText,
          hintStyle: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.gray.withValues(alpha: 0.8),
          ),
        ),
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
          width: 1,
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
              AppAssets.imagesSearch, // Assuming search icon is here
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
    );
  }
}
