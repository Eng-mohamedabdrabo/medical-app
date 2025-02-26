import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import 'widgets/add_measurement_container.dart';
import 'widgets/add_measurement_text_field.dart';
import 'widgets/add_medical_request_list_view.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_header.dart';

class DoctorRequestMedicalReportView extends StatelessWidget {
  const DoctorRequestMedicalReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(
              title: 'Medical Report',
              textStyle: AppStyles.textStyleRegular18(context).copyWith(
                color: ColorManager.black,
              ),
              color: ColorManager.black,
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 39,
              child: AddMedicalRequestListView(),
            ),
            const SizedBox(
              height: 16,
            ),
            const AddMeasurementContainer(),
            const SizedBox(
              height: 30,
            ),
            const AddMeasurementTextField(
              label: 'Add Note',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
            ),
            const Expanded(child: SizedBox()),
            CustomElevatedButton(text: 'send', onPressed: (){})
          ],
        ),
      ),
    ));
  }
}





