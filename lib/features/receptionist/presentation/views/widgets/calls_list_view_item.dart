import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';


class CallsListViewItem extends StatelessWidget {
  const CallsListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCheck),
              SizedBox(
                width: 12,
              ),
              Text(
                'Ebrahim Khaled',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              Expanded(child: SizedBox()),
              SvgPicture.asset(AppAssets.imagesGreenCheck),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCalender),

              SizedBox(
                width: 12,
              ),
              Text(
                '24 . 04 . 2021',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),

        ],
      ),
    );
  }
}
