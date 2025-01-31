import 'package:flutter/material.dart';
import 'package:medical_app/features/receptionist/presentation/views/widgets/select_doctor_body.dart';


class SelectDoctorView extends StatelessWidget {
  const SelectDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SelectDoctorBody(),
        ),
      ),
    );
  }
}

