import 'package:flutter/material.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/add_measurement_container.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/add_measurement_text_field.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/add_medical_request_list_view.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_header.dart';

class DoctorRequestMedicalMeasurementView extends StatelessWidget {
  const DoctorRequestMedicalMeasurementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                title: 'Medical Measurement',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 39,
                child: AddMedicalRequestListView(),
              ),
              SizedBox(
                height: 16,
              ),
              AddMeasurementContainer(),
              SizedBox(
                height: 30,
              ),
              AddMeasurementTextField(
                label: 'Add Note',
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
              ),
              Expanded(child: SizedBox()),
              CustomElevatedButton(text: 'send', onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }
}
