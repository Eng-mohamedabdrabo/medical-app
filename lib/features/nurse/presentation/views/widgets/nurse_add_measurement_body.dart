import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_data_info_header.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import 'measurement_requirements_list_view.dart';
import 'nurse_add_measurement_text_field.dart';
import 'nurse_measurement_result_row.dart';

class NurseAddMeasurementBody extends StatelessWidget {
  const NurseAddMeasurementBody({
    super.key,
  });

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
                  title: 'Add Measurement',
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
                            height: 40,
                            child: MeasurementRequirementsListView(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Add Measurement',
                  style: AppStyles.textStyleRegular14(context).copyWith(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: [
                    NurseMeasurementResultRow(requirement: 'Blood Pressure'),
                    SizedBox(height: 16),
                    NurseMeasurementResultRow(requirement: 'Sugar Analysis'),
                  ],
                ),
                SizedBox(height: 16),
                NurseAddMeasurementTextField(
                  label: 'Add Note',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 60,
                    horizontal: 8,
                  ),
                ),
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
                CustomElevatedButton(text: 'Add Measurement', onPressed: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
