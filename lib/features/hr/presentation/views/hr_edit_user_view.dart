import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_splash_and_login_background.dart';
import 'package:medical_app/features/hr/presentation/views/widgets/hr_edit_user_body.dart';

class HrEditUserView extends StatelessWidget {
  const HrEditUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomSplashAndLoginBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HrEditUserBody(),
          ),
        ),
      ),
    );
  }
}
