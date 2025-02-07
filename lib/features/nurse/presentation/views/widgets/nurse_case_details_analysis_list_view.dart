import 'package:flutter/material.dart';
import '../../../../analysis_employee/presentation/views/widgets/analysis_employee_case_details_analysis_list_view_item.dart';

class NurseCaseDetailsAnalysisListView extends StatelessWidget {
  const NurseCaseDetailsAnalysisListView({super.key, required this.selectedIndex, required this.onItemSelected});

  static const List<String> items = [
    'Case',
    'Medical Measurement',
  ];
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
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
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: AnalysisEmployeeCaseDetailsAnalysisListViewItem(
                text: items[index],
                isSelected: isSelected,
              ),
            ),
          );
        },
      ),
    );
  }
}