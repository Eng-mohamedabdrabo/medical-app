import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class NurseHaveRequestNoticeContainer extends StatelessWidget {
  const NurseHaveRequestNoticeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: ColorManager.orange.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'You have Request',
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(
                  color: ColorManager.orange
                      .withValues(alpha: 0.7),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SvgPicture.asset(
                AppAssets.imagesCancel,
                colorFilter: ColorFilter.mode(
                  ColorManager.black,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 45.0),
            child: Text(
              'You have a new request from the doctor, please follow up and implement the request as soon as possible',
              textAlign: TextAlign.justify,
              style: AppStyles.textStyleRegular12(context)
                  .copyWith(
                color: ColorManager.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 15,),
          SvgPicture.asset(AppAssets.containerShowDetailsOrange)
        ],
      ),
    );
  }
}
