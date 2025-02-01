import 'package:flutter/material.dart';

import '../../../../nurse/presentation/views/widgets/measurement_requirements_list_view_item.dart';

class RecordRequirementsListView extends StatelessWidget {
  const RecordRequirementsListView({super.key});

  static const List<String> items = [
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
