import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gen_extension/gen_extension.dart';
import 'package:responsive_ui/core/utils/size_config.dart';
import 'package:responsive_ui/core/widget/adaptive_text.dart';

abstract class AppStyles {
  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 14),
        color: const Color(0xffAAAAAA),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 16),
        color: const Color(0xff064060),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMedium16(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 16),
        color: const Color(0xff064060),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 20),
        color: const Color(0xff064060),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 16),
        color: const Color(0xff064060),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleBold16(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 16),
        color: const Color(0xff4EB7F2),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w700,
      );
  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 18),
        color: const Color(0xff4EB7F2),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 20),
        color: const Color(0xff064060),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 24),
        color: const Color(0xff4EB7F2),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: 12),
        color: const Color(0xffAAAAAA),
        fontFamily: "Monserrat",
        fontWeight: FontWeight.w400,
      );
}

double getResponsiveTextSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.1;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // double physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.of(context).size.width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800;
  }
}
