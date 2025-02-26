import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'widgets/manager_employee_container.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_home_view.dart';

class ManagerView extends StatelessWidget {
  const ManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeView(
                jobDescription: 'Specialist , Manger',
                notificationsOnTap: () {
                  GoRouter.of(context).push(AppRouter.kNotificationsView);

                },
                firstContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kManagerCasesView);
                },
                secondContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kReportsView);
                },
                thirdContainerTap: () {
                  GoRouter.of(context).push(AppRouter.kManagerTasksView);
                },
                fourthContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kAttendanceView);
                },
                firstContainerImage: AppAssets.containerHomeCases,
                firstContainerTitle: 'Cases',
                firstContainerColor: ColorManager.skyBlue,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kHrEmployeeView);

                    },
                    child: const ManagerEmployeeContainer()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kPrototypingMapView);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


