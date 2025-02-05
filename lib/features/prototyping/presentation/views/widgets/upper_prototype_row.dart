import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototyping_item.dart';

import '../../../../../core/utils/app_router.dart';

class UpperPrototypeRow extends StatelessWidget {
  const UpperPrototypeRow({super.key});

  static const List<String> upperItems = [
    'Doctor',
    'Receptionist',
    'Nurse',
  ];

  @override
  Widget build(BuildContext context) {
    final List<VoidCallback> onTapHandlers = [
          () => GoRouter.of(context).push(AppRouter.kDoctorView),
          () => GoRouter.of(context).push(AppRouter.kReceptionistView),
          () => GoRouter.of(context).push(AppRouter.kNurseView),
    ];

    return Row(
      children: upperItems.asMap().entries.map((entry) {
        int index = entry.key;
        var text = entry.value;

        return Expanded(
          child: PrototypingItem(
            text: text,
            onTap: onTapHandlers[index],
          ),
        );
      }).toList(),
    );
  }
}
