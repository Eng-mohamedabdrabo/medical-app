import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/calls_list_view_item.dart';

class CallsListView extends StatelessWidget {
  const CallsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: CallsListViewItem(),
      ),
    );
  }
}
