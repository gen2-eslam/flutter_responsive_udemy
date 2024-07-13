import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: hint,
      hintStyle: AppStyles.styleRegular16.copyWith(
        color: ColorManager.grey,
      ),
      fillColor: ColorManager.lightGrey,
      filled: true,
      enabledBorder: buildBorder(),
      border: buildBorder(),
      focusedBorder: buildBorder(),
    ));
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: ColorManager.lightGrey,
      ),
    );
  }
}
