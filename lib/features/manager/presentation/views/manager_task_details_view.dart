import 'package:flutter/material.dart';
import 'package:medical_app/features/manager/presentation/views/widgets/manager_task_details_view_body.dart';

class ManagerTaskDetailsView extends StatelessWidget {
  const ManagerTaskDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ManagerTaskDetailsViewBody(),
        ),
      ) ,
    );
  }
}
