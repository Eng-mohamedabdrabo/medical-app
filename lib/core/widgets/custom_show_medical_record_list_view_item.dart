import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles.dart';
import '../utils/assets.dart';

class CustomShowMedicalRecordListViewItem extends StatelessWidget {
  const CustomShowMedicalRecordListViewItem({super.key, required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesTealCircle),
        const SizedBox(width: 4,),
        Text(text ,style: AppStyles.textStyleRegular12(context),),
      ],
    );
  }
}
