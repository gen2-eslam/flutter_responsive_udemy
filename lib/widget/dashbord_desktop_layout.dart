import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/widget/all_Expensess_and_quick_invoice_section.dart';
import 'package:responsive_ui/widget/all_expensess.dart';
import 'package:responsive_ui/widget/custom_container.dart';
import 'package:responsive_ui/widget/custom_drawer.dart';
import 'package:responsive_ui/widget/income_view.dart';
import 'package:responsive_ui/widget/my_card.dart';
import 'package:responsive_ui/widget/my_card_and_transaction_history.dart';
import 'package:responsive_ui/widget/quick_invoice.dart';

class DashbordDesktopLayout extends StatelessWidget {
  const DashbordDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,

          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardAndTransactionHistory(),
                SizedBox(
                  height: 24,
                ),
                IncomeView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
