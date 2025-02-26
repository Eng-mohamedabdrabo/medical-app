import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../manager/auth_cubit/auth_cubit.dart';

class LowerLoginSection extends StatefulWidget {
  final String type;

  const LowerLoginSection({super.key, required this.type});

  @override
  State<LowerLoginSection> createState() => _LowerLoginSectionState();
}

class _LowerLoginSectionState extends State<LowerLoginSection> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          String errorMessage = state.errorMessage;

          if (errorMessage.toLowerCase().contains('incorrect password')) {
            errorMessage = 'The password you entered is incorrect.';
          } else if (errorMessage.toLowerCase().contains('user not found')) {
            errorMessage = 'No account found with this email.';
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (state is AuthSuccess) {
          if (state.loginModel.data.type == widget.type) {
            navigateToDashboard(context, widget.type);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('This account is not authorized for the selected role.'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFormField(
                  controller: emailController,
                  hintText: 'Email',
                  leadingIcon: AppAssets.imagesCall,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextFormField(
                  controller: passwordController,
                  hintText: 'Password',
                  leadingIcon: AppAssets.imagesLock,
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 8),
              buildForgotPassword(context),
              const SizedBox(height: 30),
              state is AuthLoading
                  ? const CircularProgressIndicator()
                  : CustomElevatedButton(
                text: 'Login',
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    String deviceToken = await getDeviceToken();
                    BlocProvider.of<AuthCubit>(context).login(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                      deviceToken: deviceToken,
                      type: widget.type,
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<String> getDeviceToken() async {
    return 'dummy_device_token';
  }
}

void navigateToDashboard(BuildContext context, String type) {
  final Map<String, String> routes = {
    'doctor': AppRouter.kDoctorView,
    'receptionist': AppRouter.kReceptionistView,
    'nurse': AppRouter.kNurseView,
    'analysis': AppRouter.kAnalysisEmployeeView,
    'manager': AppRouter.kManagerView,
    'hr': AppRouter.kHrView,
  };

  String? route = routes[type];
  if (route != null) {
    GoRouter.of(context).pushReplacement(route);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Unknown user type'), backgroundColor: Colors.red),
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
