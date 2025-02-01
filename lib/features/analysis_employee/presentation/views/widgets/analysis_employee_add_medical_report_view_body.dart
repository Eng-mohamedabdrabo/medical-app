import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/widgets/custom_upload_imager_container.dart';
import 'package:medical_app/features/analysis_employee/presentation/views/widgets/record_requirements_list_view.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_data_info_header.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';

class AnalysisEmployeeAddMedicalReportViewBody extends StatelessWidget {
  const AnalysisEmployeeAddMedicalReportViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                CustomHeader(
                  title: 'Add record',
                  textStyle: AppStyles.textStyleRegular18(context)
                      .copyWith(color: ColorManager.black),
                  color: ColorManager.black,
                ),
                SizedBox(height: 24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      child: SvgPicture.asset(
                        AppAssets.containerSolidDecoration,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomDataInfoHeader(profileOnTap: () {}),
                          SizedBox(height: 8),
                          Text(
                            'Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum',
                            style: AppStyles.textStyleRegular12(context)
                                .copyWith(color: ColorManager.black),
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            height: 45,
                            child: RecordRequirementsListView(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Add Medical Record',
                  style: AppStyles.textStyleRegular14(context).copyWith(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                CustomUploadImageContainer()
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomElevatedButton(text: 'Add record', onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
