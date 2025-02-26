import 'package:flutter/material.dart';
import 'select_doctor_list_view.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_header.dart';
import '../../../../../core/widgets/custom_search_bar.dart';

class SelectDoctorBody extends StatelessWidget {
  const SelectDoctorBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          title: 'Calls',
          textStyle: AppStyles.textStyleRegular18(context).copyWith(
            color: ColorManager.black,
          ),
          color: ColorManager.black,
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomSearchBar(hintText: 'Search for doctors'),
        const SizedBox(
          height: 30,
        ),
        const Expanded(
          child: SelectDoctorListView(),
        ),
        const SizedBox(height: 16,),
        CustomElevatedButton(
          text: 'Select Doctor', onPressed: () {  },
        ),
            const SizedBox(height: 8,)
      ],
    );
  }
}
