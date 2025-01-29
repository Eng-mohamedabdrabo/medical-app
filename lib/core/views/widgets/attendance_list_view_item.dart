import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/models/attendance_model.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class AttendanceListViewItem extends StatelessWidget {
  const AttendanceListViewItem({super.key, required this.attendanceModel});
 final AttendanceModel attendanceModel;
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: const Offset(0, 1),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(attendanceModel.title , style: AppStyles.textStyleRegular14(context),),
              Expanded(child:  SizedBox()),
              SvgPicture.asset(attendanceModel.icon),
            ],
          ),
          SizedBox(height: 4,),
          Text(attendanceModel.subtitle , style: AppStyles.textStyleRegular10(context),),
          SizedBox(height: 14,),
          GestureDetector(child: SvgPicture.asset(AppAssets.containerRightArrow)),
        ],
      ),
    );
  }
}
