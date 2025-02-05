import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_employee_filtering_list_view_item.dart';

class CustomEmployeeFilteringListView extends StatelessWidget {
  const CustomEmployeeFilteringListView({super.key});

  static const List<String> items = [
    'All',
    'Doctor',
    'Nurse',
    'HR Employee',
    'Analysis Employee',
    'Receptionist',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: CustomEmployeeFilteringListViewItem(
          text: items[index],
        ),
      ),
    );
  }
}
