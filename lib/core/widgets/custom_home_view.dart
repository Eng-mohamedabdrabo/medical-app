import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/assets.dart';
import '../utils/color_manager.dart';
import 'custom_data_info_header.dart';

import 'custom_home_bigger_container.dart';
import 'custom_home_smaller_container.dart';

class CustomHomeView extends StatelessWidget {
  const CustomHomeView(
      {super.key,
      required this.notificationsOnTap,
      required this.firstContainerOnTap,
      required this.secondContainerOnTap,
      required this.thirdContainerTap,
      required this.fourthContainerOnTap, required this.firstContainerImage, required this.firstContainerTitle, required this.firstContainerColor, this.jobDescription});
  final String? jobDescription;
  final void Function() notificationsOnTap;
  final void Function() firstContainerOnTap;
  final void Function() secondContainerOnTap;
  final void Function() thirdContainerTap;
  final void Function() fourthContainerOnTap;
  final String firstContainerImage , firstContainerTitle;
  final Color firstContainerColor;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double containerWidth =
            (constraints.maxWidth - 16 * 3) / 2;

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomDataInfoHeader(
                jobDescription: jobDescription,
                trailingWidget: GestureDetector(
                  onTap: notificationsOnTap,
                  child: SvgPicture.asset(AppAssets.imagesNotifications),
                ),

              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: firstContainerOnTap,
                        child: CustomHomeBiggerContainer(
                          color: firstContainerColor,
                          text: firstContainerTitle,
                          image: firstContainerImage,
                          width: containerWidth,
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: secondContainerOnTap,
                        child: CustomHomeSmallerContainer(
                          color: ColorManager.purple,
                          text: 'Reports',
                          image: AppAssets.containerHomeReports,
                          width: containerWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: thirdContainerTap,
                        child: CustomHomeSmallerContainer(
                          color: ColorManager.green,
                          text: 'Tasks',
                          image: AppAssets.containerHomeTasks,
                          width: containerWidth,
                        ),
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: fourthContainerOnTap,
                        child: CustomHomeBiggerContainer(
                          color: ColorManager.cyan,
                          text: 'Attendance - Leaving',
                          image: AppAssets.containerHomeAttendance,
                          width: containerWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}


