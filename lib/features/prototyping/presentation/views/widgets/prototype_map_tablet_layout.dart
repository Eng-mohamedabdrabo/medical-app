import 'package:flutter/material.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototype_map_body_tablet.dart';

import '../../../../../core/widgets/custom_splash_and_login_background.dart';

class PrototypeMapTabletLayout extends StatelessWidget {
  const PrototypeMapTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSplashAndLoginBackground(
      child: PrototypeMapBodyTablet()
    );
  }
}
