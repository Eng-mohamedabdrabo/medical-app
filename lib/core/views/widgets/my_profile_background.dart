import 'package:flutter/material.dart';

import '../../utils/color_manager.dart';

class MyProfileBackground extends StatelessWidget {
  const MyProfileBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.center,
          radius: 1,
          colors: [
            ColorManager.teal.withValues(alpha: 0.3),
            ColorManager.teal,
          ],
          stops: const [0.3, 1.0],
        ),
      ),
      child: Center(
          child: child
      ),
    );
  }
}
