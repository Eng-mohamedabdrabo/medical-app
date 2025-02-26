import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';
import '../utils/color_manager.dart';

class CustomUploadImageContainer extends StatelessWidget {
  const CustomUploadImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: ColorManager.gray.withValues(alpha: 0.2),
      dashPattern: const [22, 16],
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      child: Container(
          padding: const EdgeInsets.all(16),
          height: 205,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SvgPicture.asset(AppAssets.imagesUploadImage),
              const SizedBox(height: 24,),
              SvgPicture.asset(AppAssets.imagesUploadImageButton),
            ],
          )
      ),
    );
  }
}
