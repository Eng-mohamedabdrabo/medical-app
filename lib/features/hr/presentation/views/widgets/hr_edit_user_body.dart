import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import 'hr_create_and_edit_user_data.dart';

class HrEditUserBody extends StatelessWidget {
  const HrEditUserBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHeader(
                title: 'Edit User',
                textStyle: AppStyles.textStyleRegular18(context)
                    .copyWith(color: ColorManager.black),
                color: ColorManager.black,
              ),
              const SizedBox(height: 24),
              // const CreateAndEditUserData(),
              const SizedBox(height: 24),

            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Spacer(),
              CustomElevatedButton(
                text: 'Edit User',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}