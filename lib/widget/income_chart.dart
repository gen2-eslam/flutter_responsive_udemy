import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/income_details_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  final List<IncomeDetailsModel> items = [
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
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: List.generate(
          items.length,
          (index) => PieChartSectionData(
            color: items[index].color,
            value: double.parse(items[index].percentage.replaceAll("%", "")),
            title: items[index].percentage.toString(),
            radius: activeIndex == index ? 50 : 40,
            showTitle: false,
          ),
        ));
  }
}
