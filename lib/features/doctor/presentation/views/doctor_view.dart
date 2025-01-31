import 'package:flutter/material.dart';
import 'package:medical_app/core/widgets/custom_home_view.dart';
import 'package:medical_app/features/doctor/presentation/views/widgets/doctor_cases_container.dart';

class DoctorView extends StatelessWidget {
  const DoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHomeView(
                notificationsOnTap: () {},
                firstContainerOnTap: () {},
                secondContainerOnTap: () {},
                thirdContainerTap: () {},
                fourthContainerOnTap: () {},
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: DoctorCasesContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

