import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/income_details_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  final IncomeDetailsModel incomeDetailsModel;
  const IncomeDetailsItem({super.key, required this.incomeDetailsModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: incomeDetailsModel.color),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsModel.percentage,
        style: AppStyles.styleMedium16(context).copyWith(color: ColorManager.blue),
      ),
    );
  }
}
