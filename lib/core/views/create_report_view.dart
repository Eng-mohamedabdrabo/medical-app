import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/core/utils/color_manager.dart';
import 'package:medical_app/core/widgets/custom_text_field.dart';
import 'package:medical_app/core/widgets/custom_upload_imager_container.dart';
import 'package:medical_app/core/widgets/custom_elevated_button.dart';
import 'package:medical_app/core/widgets/custom_header.dart';

class CreateReportView extends StatelessWidget {
  const CreateReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomHeader(
                      title: 'Create Report',
                      textStyle: AppStyles.textStyleMedium16(context)
                          .copyWith(color: ColorManager.black),
                      color: ColorManager.black,
                    ),
                    const SizedBox(height: 24),
                    CustomTextFormField(hintText: 'Report Name' ,backgroundColor: ColorManager.gray.withValues(alpha: 0.1), ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      hintText: 'Description',
                      backgroundColor:ColorManager.gray.withValues(alpha: 0.1) ,
                      contentPadding: const EdgeInsets.only(
                        bottom: 80,
                        left: 12,
                        top: 12,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomUploadImageContainer(),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomElevatedButton(
                      text: 'Create Report',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
