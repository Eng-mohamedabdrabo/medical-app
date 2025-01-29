import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets.dart';

class CustomFingerprintDecoration extends StatelessWidget {
  const CustomFingerprintDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SvgPicture.asset(
        AppAssets.containerFingerPrintDecoration,
        fit: BoxFit.fill,
      ),
    );
  }
}
