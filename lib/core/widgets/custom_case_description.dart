import 'package:flutter/material.dart';

import '../../features/manager/data/models/show_case_details_model.dart';
import '../utils/app_styles.dart';
import '../utils/color_manager.dart';

class CustomCaseDescription extends StatelessWidget {
  const CustomCaseDescription({super.key, required this.caseDetailsModel});
final ShowCaseDetailsModel caseDetailsModel;
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
        const SizedBox(
          height: 6,
        ),
        Text(
          caseDetailsModel.description,
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.black,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}