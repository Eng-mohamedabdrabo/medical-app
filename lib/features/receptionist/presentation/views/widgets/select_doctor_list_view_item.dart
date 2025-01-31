import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/core/utils/assets.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';

class SelectDoctorListViewItem extends StatelessWidget {
  const SelectDoctorListViewItem({super.key});

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
                  offset: Offset(0, 8),
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
        'Dr.Mohamed Abdrabo',
        style: AppStyles.textStyleRegular14(context)
            .copyWith(color: ColorManager.black),
      ),
      subtitle: Text(
        'Specialist - doctor',
        style: AppStyles.textStyleRegular12(context),
      ),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: ColorManager.gray.withValues(alpha: 0.1),
        ),
        child: Center(
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.gray.withValues(alpha: 0.2),
            ),
          ),
        ),
      ),
    );
  }
}
