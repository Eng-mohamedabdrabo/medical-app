import 'package:flutter/material.dart';
import 'widgets/nurse_add_measurement_body.dart';

class NurseAddMeasurementView extends StatelessWidget {
  const NurseAddMeasurementView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: NurseAddMeasurementBody(callId: 1,),
      ),
    );
  }
}
