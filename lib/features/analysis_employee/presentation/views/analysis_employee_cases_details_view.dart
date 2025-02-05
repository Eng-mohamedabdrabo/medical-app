import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/analysis_employee/presentation/views/widgets/analysis_employee_case_details_analysis_list_view.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_case_description.dart';
import '../../../../core/widgets/custom_case_details.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../nurse/presentation/views/widgets/nurse_have_request_notice_container.dart';

class AnalysisEmployeeCasesDetailsView extends StatelessWidget {
  const AnalysisEmployeeCasesDetailsView({super.key});

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
                          AnalysisEmployeeCaseDetailsAnalysisListView(),
                          Spacer(),
                          InkWell(
                              onTap: () {
                                GoRouter.of(context).push(AppRouter
                                    .kAnalysisEmployeeAddMedicalReportView);
                              },
                              child: SvgPicture.asset(
                                  AppAssets.containerAnalysisEmployeeAnalysis))
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
            ],
          ),
        ),
      ),
    );
  }
}
