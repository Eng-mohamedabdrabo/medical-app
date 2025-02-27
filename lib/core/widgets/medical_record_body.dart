import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../features/manager/presentation/views/widgets/manager_show_medical_record_list_view.dart';
import '../utils/app_styles.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';
import 'custom_data_info_header.dart';
import 'custom_medical_record_image.dart';

class MedicalRecordBody extends StatelessWidget {
  const MedicalRecordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 365,
          child: SvgPicture.asset(
            height: 490,
            AppAssets.containerSolidDecoration,
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
              const SizedBox(height: 20),
              Text(
                'Medical Measurement',
                style:
                AppStyles.textStyleSemiBold14(context).copyWith(
                  color: ColorManager.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const ManagerShowMedicalRecordListView(),
              const SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  const CustomMedicalRecordImage(
                    image: AppAssets.medicalRecord,
                  ),
                  const SizedBox(width: 16,),
                  SvgPicture.asset(AppAssets.imagesDownload),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
