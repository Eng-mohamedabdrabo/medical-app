import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class CreateReportUploadImageContainer extends StatelessWidget {
  const CreateReportUploadImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: ColorManager.gray.withValues(alpha: 0.4),
      strokeWidth: 1,
      dashPattern: [7, 6],
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      child: Container(
          padding: EdgeInsets.all(16),
          height: 205,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SvgPicture.asset(AppAssets.imagesUploadImage),
              SizedBox(height: 24,),
              SvgPicture.asset(AppAssets.imagesUploadImageButton),
            ],
          )
      ),
    );
  }
}
