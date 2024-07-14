
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/widget/custom_dot_indecator.dart';
=======
import 'package:responsive_ui/widget/custom_dot_indecator.dart';
>>>>>>> 38cb535 (fix vertion)

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
