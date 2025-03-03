import 'package:flutter/material.dart';
import 'prototyping_row.dart';

class LowerPrototypeRow extends StatelessWidget {
  const LowerPrototypeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const PrototypeRow(
      items: ['Analysis', 'Manager', 'HR'],
      types: ['Analysis', 'manger', 'hr'],
    );
  }
}