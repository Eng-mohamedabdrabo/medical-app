import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_case_details_analysis_list_view.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_have_request_notice_container.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_case_description.dart';
import '../../../../core/widgets/custom_case_details.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_header.dart';

class NurseCaseDetailsView extends StatelessWidget {
  const NurseCaseDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomHeader(
                        title: 'Case Details',
                        textStyle: AppStyles.textStyleRegular18(context)
                            .copyWith(color: ColorManager.black),
                        color: ColorManager.black,
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          NurseCaseDetailsAnalysisListView(),
                          Spacer(),
                          SvgPicture.asset(AppAssets.containerNurseAnalysis)
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      NurseHaveRequestNoticeContainer(),
                      const SizedBox(height: 28),
                      CustomCaseDetails(),
                      const SizedBox(height: 16),
                      CustomCaseDescription(),
                      const SizedBox(height: 45),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              CustomElevatedButton(
                text: 'Call Doctor',
                onPressed: () {},
              ),
              SizedBox(height: 12,),
            ],
          ),
        ),
      ),
    );
  }
}

