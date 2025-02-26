import 'package:flutter/material.dart';
import 'widgets/splash_item.dart';
import '../../../../core/widgets/custom_splash_and_login_background.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSplashAndLoginBackground(
        child: SplashItem(),
      ),
    );
  }
}
