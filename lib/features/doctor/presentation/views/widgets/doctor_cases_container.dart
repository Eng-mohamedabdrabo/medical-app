import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class DoctorCasesContainer extends StatelessWidget {
  const DoctorCasesContainer({
    super.key, required this.onTap,
  });
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric( vertical: 34),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.brown,
        ),
        child: Row(
          children: [
            const SizedBox(width: 62,),
            Text(
              'Cases',
              style: AppStyles.textStyleRegular14(context).copyWith(
                color: ColorManager.white,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(AppAssets.containerHomeCases),
            const SizedBox(width: 62,)
          ],
        ),
      ),
    );
  }
}
