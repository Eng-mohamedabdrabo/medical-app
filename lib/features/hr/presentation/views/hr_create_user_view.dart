import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_splash_and_login_background.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_create_user_view_body.dart';

class HrCreateUserView extends StatelessWidget {
  const HrCreateUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSplashAndLoginBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HrCreateUserBody(),
          ),
        ),
      ),
    );
  }
}





