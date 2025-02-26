import 'package:flutter/material.dart';
import 'upper_prototype_row.dart';
import '../../../../../core/utils/app_styles.dart';
import 'lower_prototype_row.dart';

class PrototypingMapBody extends StatelessWidget {
  const PrototypingMapBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Prototype Map',
                  style: AppStyles.textStyleRegular20(context),
                ),
                const SizedBox(height: 42),
                const UpperPrototypeRow(),
                const SizedBox(height: 16),
                const LowerPrototypeRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
