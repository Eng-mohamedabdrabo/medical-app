import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';

import '../utils/app_router.dart';
import '../utils/app_styles.dart';
import '../widgets/custom_finger_print_decoration.dart';


class CheckAttendanceDoneView extends StatelessWidget {
  const CheckAttendanceDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.teal,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return const Stack(
            children: [
              // Fixed custom painter at the bottom center
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomFingerprintDecoration(),
              ),
              // Centered content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 50),
                    CheckAttendanceDoneCenterSection(),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          );
        },
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
        Lottie.asset(AppAssets.animationAttendance),
        const SizedBox(
          height: 30,
        ),
        Text(
          'Your attendance has been registered',
          style: AppStyles.textStyleRegular14(context).copyWith(
            color: ColorManager.white,
          ),
        ),
        const SizedBox(
          height: 130,
        ),
        InkWell(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kDoctorView);

          },
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 50,
            width: 50,
            decoration: const ShapeDecoration(
              shape: OvalBorder(
                  side: BorderSide(
                color: ColorManager.white,
              )),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_forward,
                color: ColorManager.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
