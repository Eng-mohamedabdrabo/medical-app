import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_show_medical_measurement_list_view_item.dart';
import '../../../data/models/show_medical_measurement_model.dart';

class ManagerShowMedicalMeasurementListView extends StatelessWidget {
  const ManagerShowMedicalMeasurementListView({super.key, required this.measurementModel});

  final ShowMedicalMeasurementModel measurementModel;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'label': 'Blood Pressure', 'value': measurementModel.bloodPressure},
      {'label': 'Sugar Analysis', 'value': measurementModel.sugarAnalysis},
    ];

    return Column(
      children: items.map((item) {
        return CustomShowMedicalMeasurementListViewItem(
          text: item['label']!,
          anotherText: item['value']!,
        );
      }).toList(),
    );
  }
}
