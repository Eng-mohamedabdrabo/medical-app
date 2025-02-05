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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomHeader(
            title: 'Create Call',
            textStyle: AppStyles.textStyleRegular18(context).copyWith(
              color: ColorManager.black,
            ),
            color: ColorManager.black,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height:25 ,),
        ),
        SliverFillRemaining(
          hasScrollBody: true,
          child: Column(
            children: [
              CustomTextFormField(hintText: 'Patient Name'),
              const SizedBox(height: 20),
              CustomTextFormField(hintText: 'Age'),
              const SizedBox(height: 20),
              CustomTextFormField(hintText: 'Phone Number'),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  GoRouter.of(context).push(AppRouter.kSelectDoctorView);
                },
                child: const CustomSelectSomeOneContainer(
                  empName: 'Select Doctor',
                ),
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Case Description',
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 80, horizontal: 12),
              ),
              const Spacer(),
              CustomElevatedButton(text: 'Send Call', onPressed: () {  },),
            ],
          ),
        ),
      ],
    );
  }
}
