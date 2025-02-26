import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/custom_data_info_header.dart';

class DoctorReplyMessageToManager extends StatelessWidget {
  const DoctorReplyMessageToManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 100,
          child: SvgPicture.asset(
            AppAssets.containerSolidDecoration,width: 2,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDataInfoHeader(),
              const SizedBox(height: 8),
              Text(
                'Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum',
                style: AppStyles.textStyleRegular12(context)
                    .copyWith(color: ColorManager.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
