import 'package:flutter/material.dart';
import 'upper_login_section.dart';
import 'lower_login_section.dart';

class LoginViewBody extends StatelessWidget {
  final String type;

  const LoginViewBody({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(height: 126),
            const UpperLoginSection(),
            const SizedBox(height: 70),
            LowerLoginSection(type: type),
            const SizedBox(height: 210),
          ],
        ),
      ),
    );
  }
}
