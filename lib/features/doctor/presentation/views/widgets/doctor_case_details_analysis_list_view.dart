import 'package:flutter/material.dart';
import 'doctor_case_details_analysis_list_view_item.dart';

class DoctorCaseDetailsAnalysisListView extends StatelessWidget {
  const DoctorCaseDetailsAnalysisListView({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  static const List<String> items = [
    'Case',
    'Medical Record',
    'Medical Measurement',
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        items.length,
            (index) {
          final isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => onItemSelected(index),
            child: DoctorCaseDetailsAnalysisListViewItem(
              text: items[index],
              isSelected: isSelected,
            ),
          );
        },
      ),
    );
  }
}
