import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/select_doctor_list_view.dart';

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
        SizedBox(
          height: 24,
        ),
        CustomSearchBar(hintText: 'Search for doctors'),
        SizedBox(
          height: 30,
        ),
        Expanded(
          child: SelectDoctorListView(),
        ),
        SizedBox(height: 16,),
        CustomElevatedButton(
          text: 'Select Doctor', onPressed: () {  },
        ),

      ],
    );
  }
}
