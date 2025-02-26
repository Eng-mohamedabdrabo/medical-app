import 'package:flutter/material.dart';
import 'measurement_requirements_list_view_item.dart';


class MeasurementRequirementsListView extends StatelessWidget {
  const MeasurementRequirementsListView({super.key});
  static const List<String> items = [
    'SGOT,SGPT',
    'ESR',
    'Lipid Profile',
    'SGOT,SGPT',
    'ESR',
    'Lipid Profile',
    'SGOT,SGPT',
    'ESR',
    'Lipid Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: MeasurementRequirementsListViewItem(
            text: items[index],
          ),
        );
      },
    );
  }
}
