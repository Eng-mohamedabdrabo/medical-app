import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/app_router.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';

class CustomDataInfoHeader extends StatelessWidget {
  const CustomDataInfoHeader({
    super.key,
    this.trailingWidget, this.jobDescription,
  });
  final String? jobDescription;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap:(){
            GoRouter.of(context).push(AppRouter.kMyProfileView);
          } ,
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
                jobDescription??'Specialist, Doctor',
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
