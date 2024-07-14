
import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';

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
