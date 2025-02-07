import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/assets.dart';

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
      child: Stack(
        children: [
          // The content above the button will be scrollable
          SingleChildScrollView(
            child: Column(
              children: [
                selectedContent,
                const SizedBox(height: 16),
                CaseDetailsActions(
                  onRequestPressed: onRequestPressed,
                  onEndCasePressed: onEndCasePressed,
                  onAddNursePressed: onAddNursePressed,
                ),
              ],
            ),
          ),
          // Positioned at the bottom

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
        const SizedBox(height: 16), // Add spacing between the row and the button
      ],
    );
  }
}
