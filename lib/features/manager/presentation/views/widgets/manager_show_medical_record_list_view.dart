import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_show_medical_record_list_view_item.dart';

class ManagerShowMedicalRecordListView extends StatelessWidget {
  const ManagerShowMedicalRecordListView({super.key});

  static const List<String> items = [
    'Blood Pressure',
    'Sugar Analysis',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:items.map((e)=>CustomShowMedicalRecordListViewItem(text: e)).toList(),
    );
  }
}
