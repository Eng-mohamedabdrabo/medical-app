import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_select_someone_container.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CreateCallViewBody extends StatelessWidget {
  const CreateCallViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return constraints.maxHeight < 600
                ? SingleChildScrollView(
              child: _buildContent(context),
            )
                : CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _buildContent(context),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Create Call',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(height: 25),
        CustomTextFormField(hintText: 'Patient Name'),
        const SizedBox(height: 20),
        CustomTextFormField(hintText: 'Age'),
        const SizedBox(height: 20),
        CustomTextFormField(hintText: 'Phone Number'),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSelectDoctorView);
          },
          child: const CustomSelectSomeOneContainer(
            empName: 'Select Doctor',
          ),
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          hintText: 'Case Description',
          contentPadding: const EdgeInsets.only(
            bottom: 80,
            left: 12,
            top: 12,
          ),
        ),
        const SizedBox(height: 20),
        CustomElevatedButton(
          text: 'Send Call',
          onPressed: () {},
        ),
      ],
    );
  }
}
