import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_search_bar.dart';
import 'doctor_select_nurse_list_view.dart';

class DoctorSelectNurseBody extends StatelessWidget {
  const DoctorSelectNurseBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Select Nurse',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomSearchBar(hintText: 'Search for nurse'),
        const SizedBox(
          height: 24,
        ),
        const Expanded(
          child: DoctorSelectNurseListView(),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomElevatedButton(text: 'Select Nurse', onPressed: () {})
      ],
    );
  }
}
