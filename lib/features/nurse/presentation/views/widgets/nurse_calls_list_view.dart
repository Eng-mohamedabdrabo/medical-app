import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_calls_list_view_item.dart';


class NurseCallsListView extends StatelessWidget {
  const NurseCallsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:4 ,itemBuilder: (context, index)=> Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: NurseCallsListViewItem(),
    ) );
  }
}
