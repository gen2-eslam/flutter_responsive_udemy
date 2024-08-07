import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
        color: isActive ? ColorManager.blue : ColorManager.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
