import 'package:flutter/material.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototyping_item.dart';

class UpperPrototypeRow extends StatelessWidget {
  const UpperPrototypeRow({
    super.key,
  });

  static const List<String> upperItems = [
    'Doctor',
    'Receptionist',
    'Nurse',
  ];

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: upperItems.asMap().entries.map((e) {
        int index = e.key;
        var text = e.value;
        return index ==1? PrototypingItem(text: text):Expanded(child: PrototypingItem(text: text));
      })
          .
      toList
        (
      )
      ,
    );
  }
}
