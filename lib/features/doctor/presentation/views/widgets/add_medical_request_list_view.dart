import 'package:flutter/cupertino.dart';
import 'add_medical_request_list_view_item.dart';

class AddMedicalRequestListView extends StatelessWidget {
  const AddMedicalRequestListView({super.key});

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
          child: AddMedicalRequestListViewItem(
            text: items[index],
          ),
        );
      },
    );
  }
}