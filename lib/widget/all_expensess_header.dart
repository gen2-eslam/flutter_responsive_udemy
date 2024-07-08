import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/widget/range_options.dart';

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
