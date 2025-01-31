import 'package:flutter/material.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/doctor_select_nurse_body.dart';

class DoctorSelectNurseView extends StatelessWidget {
  const DoctorSelectNurseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: DoctorSelectNurseBody(),
        ),
      ),
    );
  }
}
