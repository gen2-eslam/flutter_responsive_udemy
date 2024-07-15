import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/widget/latest_transaction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTansactionListView(),
      ],
    );
  }
}
