import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyle {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMsdium20(context) {
    return TextStyle(
      color: const Color(0xffFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      color: const Color(0xff4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xffAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactoer = getScaledFontSize(context);
  double rsponsiveFontSize = scaleFactoer * fontSize;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return rsponsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaledFontSize(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var phycicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = phycicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
