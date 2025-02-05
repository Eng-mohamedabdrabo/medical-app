import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_show_medical_measurement_list_view_item.dart';

class ManagerShowMedicalMeasurementListView extends StatelessWidget {
  const ManagerShowMedicalMeasurementListView({super.key});

  static const List<String> items = [
    'Blood Pressure',
    'Sugar Analysis',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:items.map((e)=>CustomShowMedicalMeasurementListViewItem(text: e)).toList(),
    );
  }
}
