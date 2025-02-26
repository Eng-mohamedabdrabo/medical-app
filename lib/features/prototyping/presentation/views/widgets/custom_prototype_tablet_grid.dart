import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_styles.dart';
import 'prototyping_item.dart';

import '../../../../../core/utils/app_router.dart';

class CustomPrototypeTabletGrid extends StatelessWidget {
  const CustomPrototypeTabletGrid({
    super.key,
  });
  static const List<String> items = [
    'Doctor',
    'Receptionist',
    'Nurse',
    'Analysis Employee',
    'Manager',
    'HR',
  ];
  @override
  Widget build(BuildContext context) {
    final List<VoidCallback> onTapHandlers = [
          () => GoRouter.of(context).push(AppRouter.kDoctorView),
          () => GoRouter.of(context).push(AppRouter.kReceptionistView),
          () => GoRouter.of(context).push(AppRouter.kNurseView),
          () => GoRouter.of(context).push(AppRouter.kAnalysisEmployeeView),
          () => GoRouter.of(context).push(AppRouter.kManagerView),
          () => GoRouter.of(context).push(AppRouter.kHrView),
    ];
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return InkWell(onTap:onTapHandlers[index],child: PrototypingItem(textStyle:AppStyles.textStyleRegular26(context),text: items[index]));
      },
    );
  }
}