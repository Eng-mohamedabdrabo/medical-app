import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class LowerLoginSection extends StatelessWidget {
  const LowerLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextFormField(
            hintText: 'Phone Number',
            leadingIcon: AppAssets.imagesCall,
          ),
        ),
        const SizedBox(height: 28),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomTextFormField(
            hintText: 'Password',
            leadingIcon: AppAssets.imagesLock,
          ),
        ),
        const SizedBox(height: 8),
        buildForgotPassword(context),
        const SizedBox(height: 30),
        CustomElevatedButton(text: 'Login', onPressed: () {  },),
      ],
    );
  }
}

Widget buildForgotPassword(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 18.0),
    child: Container(
      width: MediaQuery.sizeOf(context).width < 800
          ? double.infinity
          : kBiggerScreensWidth,
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Forgot Password?',
          style: AppStyles.textStyleRegular14(context).copyWith(
            decoration: TextDecoration.underline,
            color: ColorManager.gray,
          ),
        ),
      ),
    ),
  );
}
