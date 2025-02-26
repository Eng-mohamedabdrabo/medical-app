import 'package:flutter/material.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class DoctorShowMedicalRequirementBody extends StatelessWidget {
  const DoctorShowMedicalRequirementBody({super.key, required this.selectedContent});
  final Widget selectedContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SingleChildScrollView(
            child: selectedContent,
          ),
          const SizedBox(height: 380),
          CustomElevatedButton(text: 'End Case', onPressed: (){} , backGroundColor: ColorManager.brightRed,)
        ],
      ),
    );
  }
}
