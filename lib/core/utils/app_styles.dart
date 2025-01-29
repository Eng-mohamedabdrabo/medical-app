import 'package:flutter/cupertino.dart';
import 'package:medical_app/core/utils/size_config.dart';

import 'color_manager.dart';

abstract class AppStyles {
  static textStyleLight14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w100,
      color: ColorManager.teal,
    );
  }

  static textStyleRegular26(BuildContext context) {
    return TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: ColorManager.teal,
    );
  }

  static textStyleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorManager.gray,
    );
  }

  static textStyleRegular20(BuildContext context) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: ColorManager.teal,
    );
  }

  static textStyleRegular18(BuildContext context) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: ColorManager.white,
    );
  }
  static textStyleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: ColorManager.teal,
    );
  }
  static textStyleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorManager.gray,
    );
  }
  static textStyleRegular8(BuildContext context) {
    return TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: ColorManager.gray,
    );
  }
  static textStyleSemiBold14(BuildContext context) {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: ColorManager.orange,
    );
  }
  static textStyleRegular10(BuildContext context) {
    return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: ColorManager.teal,
    );
  }
}

const TextStyle textStyle = TextStyle();

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
