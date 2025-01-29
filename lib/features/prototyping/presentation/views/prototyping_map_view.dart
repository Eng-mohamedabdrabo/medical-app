import 'package:flutter/material.dart';
import 'package:medical_app/core/utils/adaptive_layout.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototype_map_mobile_layout.dart';
import 'package:medical_app/features/prototyping/presentation/views/widgets/prototype_map_tablet_layout.dart';

class PrototypingMapView extends StatelessWidget {
  const PrototypingMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => PrototypeMapMobileLayout(),
        tabletLayout: (context) => PrototypeMapTabletLayout(),
      ),
    );
  }
}


