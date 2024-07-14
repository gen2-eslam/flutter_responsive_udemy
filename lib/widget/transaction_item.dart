import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/transaction_history_model.dart';

class TransctionItem extends StatelessWidget {
  final TransactionHistoryModel transactionHistoryModel;
  const TransctionItem({super.key, required this.transactionHistoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: ColorManager.lightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.styleRegular16.copyWith(
            color: ColorManager.grey,
            height: 1.6,
          ),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionHistoryModel.withDrawal
                ? ColorManager.lightRed
                : ColorManager.green,
          ),
        ),
      ),
    );
  }
}
