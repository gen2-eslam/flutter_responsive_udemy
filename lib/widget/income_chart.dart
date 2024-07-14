import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      sections: [
        PieChartSectionData(
          color: ColorManager.blue,
          value: 40,
        ),
        PieChartSectionData(
          color: ColorManager.lightBlue,
          value: 25,
        ),
        PieChartSectionData(
          color: ColorManager.darkBlue,
          value: 20,
        ),
        PieChartSectionData(
          color: ColorManager.grey,
          value: 22,
        ),
      ],
    );
  }
}
