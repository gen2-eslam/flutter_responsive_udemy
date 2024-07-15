import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color? backgroundColor, textColor;
  const CustomButton(
      {super.key,
      required this.title,
      this.onPressed,
      this.backgroundColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            backgroundColor: backgroundColor ?? ColorManager.blue,
          ),
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor,
            ),
          )),
    );
  }
}
