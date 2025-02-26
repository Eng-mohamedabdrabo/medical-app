import 'package:flutter/material.dart';
import '../../../../core/utils/adaptive_layout.dart';
import 'widgets/prototype_map_mobile_layout.dart';
import 'widgets/prototype_map_tablet_layout.dart';

class PrototypingMapView extends StatelessWidget {
  const PrototypingMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const PrototypeMapMobileLayout(),
        tabletLayout: (context) => const PrototypeMapTabletLayout(),
      ),
    );
  }
}


