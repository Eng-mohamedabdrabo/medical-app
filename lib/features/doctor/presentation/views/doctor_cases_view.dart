import 'package:flutter/material.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/doctor_cases_listView.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_header.dart';

class DoctorCasesView extends StatelessWidget {
  const DoctorCasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomHeader(
                title: 'Cases',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              SizedBox(height:24 ,),
              Expanded(child: DoctorCasesListview(),)
            ],
          ),
        ),
      ),
    );
  }
}
