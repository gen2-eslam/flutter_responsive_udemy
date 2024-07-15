import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/widget/custom_container.dart';
import 'package:responsive_ui/widget/income_body.dart';
import 'package:responsive_ui/widget/income_chart.dart';
import 'package:responsive_ui/widget/income_details.dart';
import 'package:responsive_ui/widget/income_header.dart';
import 'package:responsive_ui/widget/range_options.dart';

class IncomeView extends StatelessWidget {
  const IncomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeBody(),
        ],
      ),
    );
  }
}
