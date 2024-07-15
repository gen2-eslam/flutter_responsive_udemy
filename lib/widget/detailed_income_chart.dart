import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/income_details_model.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
    return Padding(
      padding: const EdgeInsets.all(50),
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          getChartData(),
        ),
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
            titlePositionPercentageOffset: activeIndex == index ? 1.5 : null,
            color: items[index].color,
            value: double.parse(items[index].percentage.replaceAll("%", "")),
            title: activeIndex == index
                ? items[index].title
                : items[index].percentage.toString(),
            titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex == index
                    ? ColorManager.darkBlue
                    : Colors.white),
            radius: activeIndex == index ? 50 : 40,
          ),
        ));
  }
}
