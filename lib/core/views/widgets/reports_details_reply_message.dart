import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/assets.dart';

import '../../utils/app_styles.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_data_info_header.dart';

class ReportsDetailsReplyMessage extends StatelessWidget {
  const ReportsDetailsReplyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDataInfoHeader(

        ),
        SizedBox(
          height: 9,
        ),
        Text(
          "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's",
          textAlign: TextAlign.justify,
          style: AppStyles.textStyleRegular12(context).copyWith(
            color: ColorManager.black,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SvgPicture.asset(AppAssets.imagesReply,),
            SizedBox(width: 2,),
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
