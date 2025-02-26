import 'package:flutter/material.dart';
import 'widgets/select_doctor_body.dart';


class SelectDoctorView extends StatelessWidget {
  const SelectDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: SelectDoctorBody(),
        ),
      ),
    );
  }
}

