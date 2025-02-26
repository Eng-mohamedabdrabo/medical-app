import 'package:flutter/material.dart';

import '../models/case_details_model.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomCaseDetailsItem extends StatelessWidget {
  const CustomCaseDetailsItem({super.key, required this.caseDetailsModel});

  final CaseDetailsModel caseDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          caseDetailsModel.title,
          style: AppStyles.textStyleRegular14(context)
              .copyWith(color: ColorManager.gray.withValues(alpha: 0.6)),
        ),
        const Spacer(),
        caseDetailsModel.data
      ],
    );
  }
}