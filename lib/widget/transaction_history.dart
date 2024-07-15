
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/transaction_history_header.dart';
import 'package:responsive_ui/widget/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(context).copyWith(
            color: ColorManager.grey,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}
