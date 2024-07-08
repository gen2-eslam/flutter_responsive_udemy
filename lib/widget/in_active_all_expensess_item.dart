import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/model/all_expensess_item_model.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const InActiveAllExpensessItem(
      {super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ColorManager.offWhite,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textBaseline: TextBaseline.alphabetic,
        children: [
          AllExpensessItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.amount.toString(),
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
