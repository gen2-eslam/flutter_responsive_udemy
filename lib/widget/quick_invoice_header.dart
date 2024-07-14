
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
=======
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
>>>>>>> 38cb535 (fix vertion)

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          alignment: AlignmentDirectional.center,
          decoration: ShapeDecoration(
            color: ColorManager.offWhite.withOpacity(0.2),
            shape: const CircleBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: ColorManager.blue,
          ),
        ),
      ],
    );
  }
}
