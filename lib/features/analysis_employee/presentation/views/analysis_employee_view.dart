import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_home_view.dart';

class AnalysisEmployeeView extends StatelessWidget {
  const AnalysisEmployeeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeView(
                jobDescription: 'Specialist , Analysis Employee',
                notificationsOnTap: () {
                  GoRouter.of(context).push(AppRouter.kNotificationsView);

                },
                firstContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kAnalysisEmployeeCasesRequestsView);
                },
                secondContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kReportsView);
                },
                thirdContainerTap: () {
                  GoRouter.of(context).push(AppRouter.kTasksView);
                },
                fourthContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kAttendanceView);
                },
                firstContainerImage: AppAssets.containerHomeCases,
                firstContainerTitle: 'Cases',
                firstContainerColor: ColorManager.skyBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
