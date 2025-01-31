import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomCaseDescription extends StatelessWidget {
  const CustomCaseDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Case Description',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.gray.withValues(alpha: 0.6),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}