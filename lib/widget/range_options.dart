
import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: ColorManager.offWhite,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Monthly',
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: 270 * 3.14 / 180,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: ColorManager.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
