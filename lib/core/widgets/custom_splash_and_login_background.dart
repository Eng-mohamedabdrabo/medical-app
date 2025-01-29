import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';

class CustomSplashAndLoginBackground extends StatelessWidget {
  const CustomSplashAndLoginBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(AppAssets.imagesUpperSplashContainer),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppAssets.imagesLowerSplashContainer),
        ),
        child
      ],
    );
  }
}
