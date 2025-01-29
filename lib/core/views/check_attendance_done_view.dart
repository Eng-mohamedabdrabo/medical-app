import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medical_app/core/utils/assets.dart';
import 'package:medical_app/core/utils/color_manager.dart';

import '../utils/app_styles.dart';
import '../widgets/custom_finger_print_decoration.dart';

class CheckAttendanceDoneView extends StatelessWidget {
  const CheckAttendanceDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.teal,
      body: Column(
        children: [
          Expanded(child: SizedBox()),
          CheckAttendanceDoneCenterSection(),
          Expanded(child: SizedBox()),
          CustomFingerprintDecoration(),
        ],
      ),
    );
  }
}

class CheckAttendanceDoneCenterSection extends StatelessWidget {
  const CheckAttendanceDoneCenterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(46),
          height: 200,
          width: 200,
          decoration: ShapeDecoration(
            shape: OvalBorder(
                side: BorderSide(
              width: 1,
              color: ColorManager.white,
            )),
          ),
          child: SvgPicture.asset(
            AppAssets.imagesCheck,
            colorFilter: ColorFilter.mode(
              ColorManager.white,
              BlendMode.srcIn,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'Your attendance has been registered',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.white,
          ),
        ),
        SizedBox(
          height: 130,
        ),
        Container(
          padding: EdgeInsets.all(8),
          height: 50,
          width: 50,
          decoration: ShapeDecoration(
            shape: OvalBorder(
                side: BorderSide(
              width: 1,
              color: ColorManager.white,
            )),
          ),
          child: Center(
            child: Icon(
              Icons.arrow_forward,
              color: ColorManager.white,
            ),
          ),
        ),
      ],
    );
  }
}
