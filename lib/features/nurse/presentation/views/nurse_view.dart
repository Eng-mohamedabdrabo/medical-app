import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_cases_container.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_home_view.dart';

class NurseView extends StatelessWidget {
  const NurseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeView(
                jobDescription: 'Specialist , Nurse',
                notificationsOnTap: () {
                  GoRouter.of(context).push(AppRouter.kNotificationsView);
                },
                firstContainerOnTap: () {
                  GoRouter.of(context).push(AppRouter.kNurseCallsView);
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
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: InkWell(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kNurseCaseDetailsView);

                    },
                    child: NurseCasesContainer()),
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
