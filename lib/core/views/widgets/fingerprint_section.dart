import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/views/check_attendance_done_view.dart';

import '../../utils/app_styles.dart';
import '../../utils/assets.dart';
import '../../utils/color_manager.dart';

class FingerprintCenterSection extends StatelessWidget {
  const FingerprintCenterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckAttendanceDoneView(),
                ),
              );
            },
            child: SvgPicture.asset(AppAssets.imagesFingerPrint )),
        SizedBox(
          height: 30,
        ),
        Text(
          'Please touch ID sensor to verify registration',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.white,
          ),
        ),
      ],
    );
  }
}
