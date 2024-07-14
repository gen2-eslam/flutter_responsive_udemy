import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/widget/custom_text_field.dart';
=======
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/widget/custom_text_field.dart';
>>>>>>> 38cb535 (fix vertion)

class TitleTextField extends StatelessWidget {
  final String title, hint;
  const TitleTextField({super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint),
      ],
    );
  }
}
