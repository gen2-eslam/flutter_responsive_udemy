import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/model/all_expensess_item_model.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_item_header.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const ActiveAllExpensessItem({super.key, required this.allExpensesItemModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        color: ColorManager.blue,
        shape: RoundedRectangleBorder(
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
            imageColor: ColorManager.white,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleMedium16.copyWith(
              color: ColorManager.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: ColorManager.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.amount.toString(),
            style: AppStyles.styleSemiBold24.copyWith(
              color: ColorManager.white,
            ),
          ),
        ],
      ),
    );
  }
}
