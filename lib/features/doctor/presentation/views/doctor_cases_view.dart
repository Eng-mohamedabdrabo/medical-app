import 'package:flutter/material.dart';
import 'widgets/doctor_cases_list_view.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_header.dart';

class DoctorCasesView extends StatelessWidget {
  const DoctorCasesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                child: DoctorCasesListview(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
