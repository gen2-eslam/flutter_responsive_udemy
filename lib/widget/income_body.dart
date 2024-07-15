import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/size_config.dart';
import 'package:responsive_ui/widget/detailed_income_chart.dart';
import 'package:responsive_ui/widget/income_chart.dart';
import 'package:responsive_ui/widget/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width <= 1567 && width >= SizeConfig.desktop
        ? const DetailedIncomeChart()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(width: 40),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
