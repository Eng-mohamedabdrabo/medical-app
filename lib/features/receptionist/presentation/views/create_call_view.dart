import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/create_call_view_body.dart';


class ReceptionistCreateCallView extends StatelessWidget {
  const ReceptionistCreateCallView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CreateCallViewBody(),
        ),
      ),
    );
  }
}

