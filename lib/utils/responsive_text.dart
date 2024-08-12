import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

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
