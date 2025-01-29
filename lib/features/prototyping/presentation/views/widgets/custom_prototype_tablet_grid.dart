import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/app_styles.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototyping_item.dart';

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
    return SliverGrid.builder(
      itemCount: 6,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return PrototypingItem(textStyle:AppStyles.textStyleRegular26(context),text: items[index]);
      },
    );
  }
}