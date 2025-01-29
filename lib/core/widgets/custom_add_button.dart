import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';
import '../utils/color_manager.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key, required this.onTap,
  });
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: ColorManager.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: SvgPicture.asset(
          AppAssets.imagesPlus,
          colorFilter: ColorFilter.mode(
            ColorManager.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
