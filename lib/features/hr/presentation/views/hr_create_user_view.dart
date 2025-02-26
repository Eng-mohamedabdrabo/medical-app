import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_splash_and_login_background.dart';
import 'widgets/hr_create_user_view_body.dart';

class HrCreateUserView extends StatelessWidget {
  const HrCreateUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSplashAndLoginBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: HrCreateUserBody(),
          ),
        ),
      ),
    );
  }
}





