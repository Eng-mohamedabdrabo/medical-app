import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/assets.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_data_info_header.dart';

class ReportsDetailsReplyMessage extends StatelessWidget {
  const ReportsDetailsReplyMessage({super.key, required this.name, required this.date,  this.note});
final String name;
final String date;
final String? note;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomDataInfoHeader(
           date:date ,
       name:name ,
        ),
        const SizedBox(
          height: 9,
        ),
        Text(
          note??"doctor didn't add anything !",
          textAlign: TextAlign.justify,
          style: AppStyles.textStyleRegular12(context).copyWith(
            color: ColorManager.black,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SvgPicture.asset(AppAssets.imagesReply,),
            const SizedBox(width: 2,),
            Text(
              'Reply - Manager',
              style: AppStyles.textStyleRegular10(context).copyWith(
                fontWeight: FontWeight.w300,
                color: ColorManager.gray,
              ),
            )
          ],
        )
      ],
    );
  }
}
