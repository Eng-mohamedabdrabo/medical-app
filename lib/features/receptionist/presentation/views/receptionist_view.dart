import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_home_view.dart';

class ReceptionistView extends StatelessWidget {
  const ReceptionistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomHomeView(
          jobDescription: 'Specialist , Receptionist',
          notificationsOnTap: () {
            GoRouter.of(context).push(AppRouter.kNotificationsView);
          },
          firstContainerOnTap: () {
            GoRouter.of(context).push(AppRouter.kReceptionistCallsView);
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
          firstContainerImage: AppAssets.containerHomeCalls,
          firstContainerTitle: 'Calls',
          firstContainerColor: ColorManager.skyBlue,
        ),
      ),
    );
  }
}
