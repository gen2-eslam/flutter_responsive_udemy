import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      getChartData(),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: ColorManager.blue,
          value: 40,
          showTitle: false,
        ),
        PieChartSectionData(
          color: ColorManager.lightBlue,
          value: 25,
          showTitle: false,
        ),
        PieChartSectionData(
          color: ColorManager.darkBlue,
          value: 20,
          showTitle: false,
        ),
        PieChartSectionData(
          color: ColorManager.grey,
          value: 22,
          showTitle: false,
        ),
      ],
    );
  }
}
