import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../receptionist/data/models/show_all_calls_model.dart';

class DoctorCasesListViewItem extends StatelessWidget {
  const DoctorCasesListViewItem({super.key, this.onTap, required this.allCallsModel});

  final void Function()? onTap;
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
            ],
          ),
          const SizedBox(
            height: 8,
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
            height: 34,
          ),
          Center(
            child: GestureDetector(
              onTap: onTap ??
                  () {
                    GoRouter.of(context).push(
                      AppRouter.kDoctorCaseDetailsView,
                    );
                  },
              child: SvgPicture.asset(AppAssets.containerShowDetails),
            ),
          ),
        ],
      ),
    );
  }
}
