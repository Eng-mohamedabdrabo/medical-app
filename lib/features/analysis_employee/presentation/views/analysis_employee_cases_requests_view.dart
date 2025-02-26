import 'package:flutter/material.dart';
import 'widgets/analysis_employee_cases_requests_list_view.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_header.dart';

class AnalysisEmployeeCasesRequestsView extends StatelessWidget {
  const AnalysisEmployeeCasesRequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              CustomHeader(
                title: 'Requests',
                textStyle: AppStyles.textStyleRegular18(context).copyWith(
                  color: ColorManager.black,
                ),
                color: ColorManager.black,
              ),
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                child: AnalysisEmployeeCasesRequestsListView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
