import 'package:flutter/material.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototyping_item.dart';

class LowerPrototypeRow extends StatelessWidget {
  const LowerPrototypeRow({
    super.key,
  });

  static const List<String> lowerItems = [
    'Analysis Employee',
    'Manager',
    'HR',
  ];

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: lowerItems.asMap().entries.map((e) {
        int index = e.key;
        var text = e.value;
        return index ==2? Expanded(child: PrototypingItem(text: text)):PrototypingItem(text: text);
      })
          .
      toList
        (
      )
      ,
    );
  }
}
