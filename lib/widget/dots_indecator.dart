
import 'package:flutter/material.dart';

import 'package:responsive_ui/widget/custom_dot_indecator.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({
    super.key,
    required this.selectedItem,
  });

  final int selectedItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(horizontal: 8)
              : EdgeInsets.zero,
          child: CustomDotIndecator(
            isActive: index == selectedItem,
          ),
        );
      }),
    );
  }
}
