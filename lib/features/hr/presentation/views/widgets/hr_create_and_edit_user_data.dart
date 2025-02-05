import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CreateAndEditUserData extends StatelessWidget {
  const CreateAndEditUserData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'First name',
          leadingIcon: AppAssets.imagesUserProfile,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Last name',
          leadingIcon: AppAssets.imagesUserProfile,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Gender',
          leadingIcon: AppAssets.imagesGender,
          trailingIcon: Icons.arrow_drop_down_outlined,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Date of birth',
          leadingIcon: AppAssets.imagesCalender,
          trailingIcon: Icons.arrow_drop_down_outlined,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Status',
          leadingIcon: AppAssets.imagesHeart,
          trailingIcon: Icons.arrow_drop_down_outlined,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Phone Number',
          leadingIcon: AppAssets.imagesCall,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'E-mail',
          leadingIcon: AppAssets.imagesMessage,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Address',
          leadingIcon: AppAssets.imagesLocation,
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Password',
          leadingIcon: AppAssets.imagesLock,
          trailingIcon: Icons.remove_red_eye_outlined,
        ),
      ],
    );
  }
}