import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/color_manager.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double? padding;
  const CustomContainer({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
