import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'prototyping_item.dart';
import '../../../../../core/utils/app_router.dart';

class PrototypeRow extends StatelessWidget {
  final List<String> items;
  final List<String> types;

  const PrototypeRow({
    super.key,
    required this.items,
    required this.types,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var text = entry.value;
        var type = types[index]; // تحديد النوع

        return Expanded(
          child: PrototypingItem(
            text: text,
            onTap: () => GoRouter.of(context).push(
              '${AppRouter.kLoginView}?type=$type', // إرسال النوع مع التنقل
            ),
          ),
        );
      }).toList(),
    );
  }
}
