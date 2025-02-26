import 'package:flutter/material.dart';
import 'notifications_list_view_item.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0 , vertical: 8),
          child: NotificationsListViewItem(),
        );
      },
    );
  }
}

