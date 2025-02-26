import 'package:flutter/material.dart';
import 'widgets/doctor_select_nurse_body.dart';

class DoctorSelectNurseView extends StatelessWidget {
  const DoctorSelectNurseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: DoctorSelectNurseBody(),
        ),
      ),
    );
  }
}
