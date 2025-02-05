import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class DoctorCaseDetailsActionsBody extends StatelessWidget {
  final Widget selectedContent;
  final VoidCallback onRequestPressed;
  final VoidCallback onEndCasePressed;
  final VoidCallback onAddNursePressed;

  const DoctorCaseDetailsActionsBody({
    super.key,
    required this.selectedContent,
    required this.onRequestPressed,
    required this.onEndCasePressed,
    required this.onAddNursePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // No need for Expanded here, we only want to make the selectedContent scrollable
          SingleChildScrollView(
            child: selectedContent,
          ),
          const SizedBox(height: 16),
          // Case details actions should be fixed, not scrollable
          CaseDetailsActions(
            onRequestPressed: onRequestPressed,
            onEndCasePressed: onEndCasePressed,
            onAddNursePressed: onAddNursePressed,
          ),
        ],
      ),
    );
  }
}

class CaseDetailsActions extends StatelessWidget {
  final VoidCallback onRequestPressed;
  final VoidCallback onEndCasePressed;
  final VoidCallback onAddNursePressed;

  const CaseDetailsActions({
    super.key,
    required this.onRequestPressed,
    required this.onEndCasePressed,
    required this.onAddNursePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: onAddNursePressed,
                child: SvgPicture.asset(AppAssets.containerAddNurse),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: onRequestPressed,
                child: SvgPicture.asset(AppAssets.containerRequest),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
        ),
        CustomElevatedButton(
          text: 'End Case',
          backGroundColor: ColorManager.brightRed,
          onPressed: onEndCasePressed,
        ),
      ],
    );
  }
}
