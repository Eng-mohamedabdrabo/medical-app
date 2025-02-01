import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_cases_container.dart';
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
                notificationsOnTap: () {},
                firstContainerOnTap: () {},
                secondContainerOnTap: () {},
                thirdContainerTap: () {},
                fourthContainerOnTap: () {},
                firstContainerImage: AppAssets.containerHomeCalls,
                firstContainerTitle: 'Calls',
                firstContainerColor: ColorManager.skyBlue,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: NurseCasesContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



