import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';
import '../../widgets/custom_data_info_header.dart';

class ReportsAndTasksDetailsMessage extends StatelessWidget {
  const ReportsAndTasksDetailsMessage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppAssets.containerSolidDecoration,
          height: MediaQuery.sizeOf(context).height * 0.32,
          colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomDataInfoHeader(jobDescription: 'Specialist , Manager',),
              const SizedBox(height: 8),
              Text(
                "Api haven't handle this!!!!.",
                textAlign: TextAlign.justify,
                style: AppStyles.textStyleRegular12(context)
                    .copyWith(color: ColorManager.brightRed),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
