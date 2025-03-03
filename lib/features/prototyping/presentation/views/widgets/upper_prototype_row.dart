import 'package:flutter/material.dart';
import 'prototyping_row.dart';

class UpperPrototypeRow extends StatelessWidget {
  const UpperPrototypeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const PrototypeRow(
      items: ['Doctor', 'Receptionist', 'Nurse'],
      types: ['doctor', 'receptionist', 'Nurse'], // يجب أن تكون حساسة
    );
  }
}