import 'package:flutter/material.dart';
import '../../widgets/custom_finger_print_decoration.dart';
import 'fingerprint_section.dart';

class FingerprintBody extends StatelessWidget {
  const FingerprintBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: SizedBox()),
        FingerprintCenterSection(),
        Expanded(child: SizedBox()),
        CustomFingerprintDecoration(),
      ],
    );
  }
}
