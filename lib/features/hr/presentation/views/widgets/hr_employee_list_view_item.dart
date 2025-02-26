import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class HrEmployeeListViewItem extends StatelessWidget {
  const HrEmployeeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.4),
                  blurRadius: 8,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AppAssets.imagesProfilePic,
              fit: BoxFit.cover,
              width: 45,
              height: 45,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                AppAssets.imagesActive,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        'Mohamed Abdrabo',
        style: AppStyles.textStyleRegular14(context)
            .copyWith(color: ColorManager.black),
      ),
      subtitle: Text(
        'Specialist - Nurse',
        style: AppStyles.textStyleRegular12(context),
      ),
    );
  }
}
