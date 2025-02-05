import 'package:flutter/material.dart';

import 'custom_case_description.dart';
import 'custom_case_details.dart';

class CaseDetailsBody extends StatelessWidget {
  const CaseDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCaseDetails(),
        const SizedBox(height: 16),
        CustomCaseDescription(),
        const SizedBox(height: 45),
      ],
    );
  }
}