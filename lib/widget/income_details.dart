import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/income_details_model.dart';
import 'package:responsive_ui/widget/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  static final List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
        color: ColorManager.blue, title: 'Design service', percentage: '40%'),
    IncomeDetailsModel(
        color: ColorManager.lightBlue,
        title: 'Design product',
        percentage: '25%'),
    IncomeDetailsModel(
        color: ColorManager.darkBlue,
        title: 'Product royalti',
        percentage: '20%'),
    IncomeDetailsModel(
        color: ColorManager.grey, title: 'Other', percentage: '22%'),
  ];
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          IncomeDetailsItem(incomeDetailsModel: items[index]),
    );
  }
}
