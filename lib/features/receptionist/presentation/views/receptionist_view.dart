import 'package:flutter/material.dart';

import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/custom_home_view.dart';

class ReceptionistView extends StatelessWidget {
  const ReceptionistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomHomeView(
            notificationsOnTap: () {},
            firstContainerOnTap: () {},
            secondContainerOnTap: () {},
            thirdContainerTap: () {},
            fourthContainerOnTap: () {},
            firstContainerImage: AppAssets.containerHomeCalls,
            firstContainerTitle: 'Calls',
            firstContainerColor: ColorManager.skyBlue,
          ),
        ),
      ),
    );
  }
}
