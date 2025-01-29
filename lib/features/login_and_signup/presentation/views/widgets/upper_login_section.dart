import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';

class UpperLoginSection extends StatelessWidget {
  const UpperLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(AppAssets.imagesLogo),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            'Welcome Back !',
            style: AppStyles.textStyleRegular26(context),
          ),
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            'To Continue , Login Now',
            style: AppStyles.textStyleRegular14(context),
          ),
        ),
      ],
    );
  }
}
