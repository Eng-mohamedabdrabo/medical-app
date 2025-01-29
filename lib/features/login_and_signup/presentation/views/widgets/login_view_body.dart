import 'package:flutter/material.dart';
import 'package:medical_app/features/login_and_signup/presentation/views/widgets/upper_login_section.dart';
import 'lower_login_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 126),
            UpperLoginSection(),
            const SizedBox(height: 70),
            LowerLoginSection(),
            const SizedBox(height: 210),
          ],
        ),
      ),
    );
  }
}
