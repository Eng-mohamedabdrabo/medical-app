import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../login_and_signup/presentation/manager/auth_cubit/auth_cubit.dart';
import 'hr_create_and_edit_user_data.dart';

class HrCreateUserBody extends StatefulWidget {
  const HrCreateUserBody({super.key});

  @override
  State<HrCreateUserBody> createState() => _HrCreateUserBodyState();
}

class _HrCreateUserBodyState extends State<HrCreateUserBody> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  String gender = 'Male';
  String status = 'Single';
  String specialist = 'Doctor';
  String type = 'Employee';
  String birthday = '1990-01-01';

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Employee Added Successfully'),
              duration: Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              backgroundColor: ColorManager.teal,
            ),
          );
        } else if (state is AuthFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: ${state.errorMessage}'),
              duration: const Duration(seconds: 3),
              behavior: SnackBarBehavior.floating,
              backgroundColor: ColorManager.brightRed,
            ),
          );
        }
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomHeader(
                  title: 'New User',
                  textStyle: AppStyles.textStyleRegular18(context)
                      .copyWith(color: ColorManager.black),
                  color: ColorManager.black,
                ),
                const SizedBox(height: 24),
                CreateAndEditUserData(
                  firstNameController: firstNameController,
                  lastNameController: lastNameController,
                  mobileController: mobileController,
                  emailController: emailController,
                  passwordController: passwordController,
                  addressController: addressController,
                  onGenderChanged: (value) => gender = value,
                  onStatusChanged: (value) => status = value,
                  onDateOfBirthChanged: (value) => birthday = value,
                  onTypeChanged: (value) => type = value,
                ),
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
                  text: 'Create User',
                  onPressed: () {
                    context.read<AuthCubit>().register(
                          firstName: firstNameController.text,
                          lastName: lastNameController.text,
                          mobile: mobileController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          gender: gender,
                          status: status,
                          specialist: specialist,
                          type: type,
                          birthday: birthday,
                          address: addressController.text,
                        );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
