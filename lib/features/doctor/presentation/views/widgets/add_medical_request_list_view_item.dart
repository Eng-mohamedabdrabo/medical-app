import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class AddMedicalRequestListViewItem extends StatelessWidget {
  const AddMedicalRequestListViewItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: ColorManager.teal, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.textStyleRegular10(context).copyWith(
              color: ColorManager.white,
            ),
          ),
          SizedBox(
            width: 14,
          ),
          SvgPicture.asset(AppAssets.imagesCancel),
        ],
      ),
    );
  }
}