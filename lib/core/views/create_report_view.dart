import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/color_manager.dart';
import 'package:medical_app/core/views/widgets/create_report_custom_text_filed.dart';
import 'package:medical_app/core/views/widgets/create_report_upload_imager_container.dart';
import 'package:medical_app/core/widgets/custom_elevated_button.dart';
import 'package:medical_app/core/widgets/custom_header.dart';

class CreateReportView extends StatelessWidget {
  const CreateReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomHeader(
                title: 'Create Report',
                textStyle: AppStyles.textStyleMedium16(context)
                    .copyWith(color: ColorManager.black),
                color: ColorManager.black,
              ),
              SizedBox(
                height: 24,
              ),
              CreateReportCustomTextFiled(
                label: 'Report Name',
              ),
              SizedBox(
                height: 20,
              ),
              CreateReportCustomTextFiled(
                label: 'Description',
                contentPadding: EdgeInsets.symmetric(vertical: 40),
              ),
              SizedBox(
                height: 20,
              ),
              CreateReportUploadImageContainer(),
              Spacer(),
              CustomElevatedButton(text: 'Create Report')
            ],
          ),
        ),
      ),
    );
  }
}

