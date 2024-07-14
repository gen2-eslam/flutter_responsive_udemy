import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/custom_container.dart';
import 'package:responsive_ui/widget/latest_transaction_list_view.dart';
import 'package:responsive_ui/widget/my_card.dart';
import 'package:responsive_ui/widget/my_card_page_view_with_dots_indecator.dart';
import 'package:responsive_ui/widget/transaction_history_header.dart';
import 'package:responsive_ui/widget/transaction_history_list_view.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "MyCard",
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          MyCardPageViewWithDotsIndecator(),

          Divider(
            height: 40,
          ),
          TransactionHistory()

        ],
      ),
    );
  }
}


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
          style: AppStyles.styleMedium16.copyWith(
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
