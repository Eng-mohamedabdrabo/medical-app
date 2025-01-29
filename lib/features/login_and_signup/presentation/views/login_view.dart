import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_splash_and_login_background.dart';
import 'package:medical_app/features/login_and_signup/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSplashAndLoginBackground(
        child: LoginViewBody(),
      ),
    );
  }
}
