import 'package:flutter/material.dart';
import 'package:responsive_ui/model/transaction_history_model.dart';
import 'package:responsive_ui/widget/my_card_and_transaction_history.dart';
import 'package:responsive_ui/widget/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  static final List<TransactionHistoryModel> transactionHistoryList = [
    TransactionHistoryModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      amount: r"$20,129",
      withDrawal: true,
    ),
    TransactionHistoryModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$2,000",
      withDrawal: false,
    ),
    TransactionHistoryModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      amount: r"$20,129",
      withDrawal: false,
    ),
  ];
  const TransactionHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => TransctionItem(
              transactionHistoryModel: transactionHistoryList[index],
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
        itemCount: transactionHistoryList.length);
  }
}
