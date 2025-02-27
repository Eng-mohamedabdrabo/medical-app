import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../data/models/show_all_calls_model.dart';


class CallsListViewItem extends StatelessWidget {
  const CallsListViewItem({
    super.key, required this.allCallsModel,
  });
 final ShowAllCallsModel allCallsModel;
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
              const SizedBox(
                width: 12,
              ),
              Text(
                allCallsModel.patientName,
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
              const Expanded(child: SizedBox()),
              SvgPicture.asset(AppAssets.imagesGreenCheck),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              SvgPicture.asset(AppAssets.containerTasksCalender),

              const SizedBox(
                width: 12,
              ),
              Text(
                allCallsModel.createdAt,
                style: AppStyles.textStyleRegular14(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),

        ],
      ),
    );
  }
}
