import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';

class CustomShowMedicalMeasurementListViewItem extends StatelessWidget {
  const CustomShowMedicalMeasurementListViewItem({super.key, required this.text, required this.anotherText});
   final String text;
   final String anotherText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppAssets.imagesTealCircle),
        const SizedBox(width: 4,),
        Text(text ,style: AppStyles.textStyleRegular12(context),),
        const Spacer(),
        Text(anotherText , style: AppStyles.textStyleRegular12(context),)
      ],
    );
  }
}
