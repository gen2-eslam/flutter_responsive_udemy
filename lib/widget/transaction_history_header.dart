
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/transaction_history_list_view.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.styleMedium20,
        ),
        const Spacer(),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(
            color: ColorManager.blue,
          ),
        ),
      ],
    );
  }
}
