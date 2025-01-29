import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/color_manager.dart';
import 'package:medical_app/core/views/widgets/fingerprint_body.dart';

class FingerprintView extends StatelessWidget {
  const FingerprintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.teal,
      body: FingerprintBody(),
    );
  }
}



