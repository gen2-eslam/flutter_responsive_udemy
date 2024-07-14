import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/widget/range_options.dart';
=======
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/widget/range_options.dart';
>>>>>>> 38cb535 (fix vertion)

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        RangeOptions(),
      ],
    );
  }
}
