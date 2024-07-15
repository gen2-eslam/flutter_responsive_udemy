

import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/all_expensess_item_model.dart';
import 'package:responsive_ui/widget/all_expensess_item_header.dart';

class ActiveAllExpensessItemSmallDevice extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;

  const ActiveAllExpensessItemSmallDevice(
      {super.key, required this.allExpensesItemModel});

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
            imageColor: ColorManager.white,
            image: allExpensesItemModel.image,
          ),
          const Flexible(
            child: SizedBox(
              height: 34,
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleMedium16(context).copyWith(
                color: ColorManager.white,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                color: ColorManager.white.withOpacity(0.7),
              ),
            ),
          ),
          const Flexible(
            child: SizedBox(
              height: 16,
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.amount.toString(),
              style: AppStyles.styleSemiBold24(context).copyWith(
                color: ColorManager.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}