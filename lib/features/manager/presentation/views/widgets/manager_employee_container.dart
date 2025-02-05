import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';

class ManagerEmployeeContainer extends StatelessWidget {
  const ManagerEmployeeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( vertical: 34),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorManager.brown,
      ),
      child: Row(
        children: [
          SizedBox(width: 62,),
          Text(
            'Employee',
            style: AppStyles.textStyleRegular14(context).copyWith(
              color: ColorManager.white,
            ),
          ),
          Spacer(),
          SvgPicture.asset(AppAssets.containerHomeEmployee),
          SizedBox(width: 62,)
        ],
      ),
    );
  }
}
