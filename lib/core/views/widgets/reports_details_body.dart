import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/views/widgets/reports_and_tasks_details_message.dart';
import 'package:medical_app/core/views/widgets/reports_details_custom_text_field.dart';
import 'package:medical_app/core/views/widgets/reports_details_end_button.dart';
import 'package:medical_app/core/views/widgets/reports_details_reply_message.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_header.dart';

class ReportsDetailsBody extends StatelessWidget {
  const ReportsDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHeader(
                  title: 'Reports Details',
                  textStyle: AppStyles.textStyleMedium16(context).copyWith(
                    color: ColorManager.black,
                  ),
                  color: ColorManager.black,
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: ReportsDetailsCustomTextField(
                        label: 'Report Name',
                      ),
                    ),
                    ReportsDetailsEndButton(),
                  ],
                ),
                const SizedBox(height: 25),
                ReportsDetailsReplyMessage(),
                const SizedBox(height: 13),
                ReportsAndTasksDetailsMessage(image: AppAssets.imagesReportsDetailsHospital,),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 88,
                )),
                ReportsDetailsCustomTextField(
                  label: 'type your reply',
                  borderRadius: BorderRadius.circular(12),
                  suffix: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.upload,
                      color: ColorManager.gray.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomElevatedButton(
                  text: 'Send', onPressed: () {  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
