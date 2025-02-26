import 'package:flutter/material.dart';
import 'widgets/manager_task_details_view_body.dart';

class ManagerTaskDetailsView extends StatelessWidget {
  const ManagerTaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ManagerTaskDetailsViewBody(),
        ),
      ) ,
    );
  }
}
