import 'package:flutter/material.dart';
import 'package:gen_extension/gen_extension.dart';
import 'package:responsive_ui/core/utils/size_config.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText({
    super.key,
    required this.text,
    required this.fontSize,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.center,
    this.textOverflow,
    this.textDecoration,
    this.wordSpacing = 0.0,
    this.maxLines,
  });

  final String text;
  final double fontSize;
  final Color? color;
  final double wordSpacing;
  @override
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;
  @override
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: getResponsiveTextSize(context, fontSize: fontSize),
        color: color,
        fontWeight: fontWeight,
        wordSpacing: wordSpacing,
        decoration: textDecoration,
      ),
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
    );
  }
}

double getResponsiveTextSize(
  BuildContext context, {
  required double fontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = context.deviceWidth;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
