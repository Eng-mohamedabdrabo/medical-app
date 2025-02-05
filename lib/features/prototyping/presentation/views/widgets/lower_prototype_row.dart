import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototyping_item.dart';

import '../../../../../core/utils/app_router.dart';

class LowerPrototypeRow extends StatelessWidget {
  const LowerPrototypeRow({super.key});

  static const List<String> lowerItems = [
    'Analysis Employee',
    'Manager',
    'HR',
  ];

  @override
  Widget build(BuildContext context) {
    final List<VoidCallback> onTapHandlers = [
          () => GoRouter.of(context).push(AppRouter.kAnalysisEmployeeView),
          () => GoRouter.of(context).push(AppRouter.kManagerView),
          () => GoRouter.of(context).push(AppRouter.kHrView),
    ];

    return Row(
      children: lowerItems.asMap().entries.map((entry) {
        int index = entry.key;
        var text = entry.value;

        return index == 2 // If HR, wrap in Expanded
            ? Expanded(
          child: PrototypingItem(
            text: text,
            onTap: onTapHandlers[index],
          ),
        )
            : PrototypingItem(
          text: text,
          onTap: onTapHandlers[index],
        );
      }).toList(),
    );
  }
}
