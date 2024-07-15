import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/custom_container.dart';
import 'package:responsive_ui/widget/latest_transaction_list_view.dart';
import 'package:responsive_ui/widget/my_card.dart';
import 'package:responsive_ui/widget/my_card_page_view_with_dots_indecator.dart';
import 'package:responsive_ui/widget/transaction_history.dart';
import 'package:responsive_ui/widget/transaction_history_header.dart';
import 'package:responsive_ui/widget/transaction_history_list_view.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MyCard",
            style: AppStyles.styleSemiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          const MyCardPageViewWithDotsIndecator(),
          const Divider(
            height: 40,
          ),
          const TransactionHistory()
        ],
      ),
    );
  }
}
