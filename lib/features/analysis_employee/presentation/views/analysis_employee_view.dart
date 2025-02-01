import 'package:flutter/material.dart';

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
                notificationsOnTap: () {},
                firstContainerOnTap: () {},
                secondContainerOnTap: () {},
                thirdContainerTap: () {},
                fourthContainerOnTap: () {},
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
