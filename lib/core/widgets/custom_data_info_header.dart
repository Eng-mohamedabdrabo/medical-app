import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';

class CustomDataInfoHeader extends StatelessWidget {
  const CustomDataInfoHeader({
    super.key,
    this.trailingWidget, required this.profileOnTap,
  });

  final Widget? trailingWidget;
  final void Function() profileOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap:profileOnTap ,
          child: SizedBox(
            width: 45,
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ),
              child: Image.asset(
                AppAssets.imagesProfilePic,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mohamed Abdrabo',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              const SizedBox(height: 4),
              Text(
                'Specialist, Doctor',
                style: AppStyles.textStyleRegular12(context).copyWith(
                  color: ColorManager.teal,
                ),
              ),
            ],
          ),
        ),
        if (trailingWidget != null)
          trailingWidget!
        else
          Text(
            '26 Jan 2025',
            style: AppStyles.textStyleRegular10(context).copyWith(
              fontWeight: FontWeight.w300,
              color: ColorManager.gray,
            ),
          ),
      ],
    );
  }
}
