import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'custom_prototype_tablet_grid.dart';

class PrototypeMapBodyTablet extends StatelessWidget {
  const PrototypeMapBodyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Center(
                  child: Text(
            'Prototype Map',
            style: AppStyles.textStyleRegular26(context),
          ))),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
            ),
          ),
          CustomPrototypeTabletGrid(),
        ],
      ),
    );
  }
}
