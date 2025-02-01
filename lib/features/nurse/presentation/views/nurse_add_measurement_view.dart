import 'package:flutter/material.dart';
import 'package:medical_app/features/nurse/presentation/views/widgets/nurse_add_measurement_body.dart';

class NurseAddMeasurementView extends StatelessWidget {
  const NurseAddMeasurementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NurseAddMeasurementBody(),
      ),
    );
  }
}
