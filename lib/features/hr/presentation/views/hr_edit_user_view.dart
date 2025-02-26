import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_splash_and_login_background.dart';
import 'widgets/hr_edit_user_body.dart';

class HrEditUserView extends StatelessWidget {
  const HrEditUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSplashAndLoginBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: HrEditUserBody(),
          ),
        ),
      ),
    );
  }
}
