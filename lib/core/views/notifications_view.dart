import 'package:flutter/material.dart';
import 'package:medical_app/core/views/widgets/notifications_body.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationBody(),
      ),
    );
  }
}

