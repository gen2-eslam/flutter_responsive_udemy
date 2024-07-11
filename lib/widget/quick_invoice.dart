import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/widget/custom_container.dart';
import 'package:responsive_ui_udemy/widget/latest_transction.dart';
import 'package:responsive_ui_udemy/widget/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [QuickInvoiceHeader(), LatestTransction()],
    ));
  }
}
