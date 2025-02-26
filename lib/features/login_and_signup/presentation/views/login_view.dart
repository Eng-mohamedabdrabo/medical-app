import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_splash_and_login_background.dart';
import 'widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  final String type; // استقبال النوع

  const LoginView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSplashAndLoginBackground(
        child: LoginViewBody(type: type), // تمرير النوع إلى `LoginViewBody`
      ),
    );
  }
}
