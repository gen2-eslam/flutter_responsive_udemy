import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/all_Expensess_and_quick_invoice_section.dart';
import 'package:responsive_ui/widget/income_view.dart';
import 'package:responsive_ui/widget/my_card_and_transaction_history.dart';

class DashbordMobileLayout extends StatelessWidget {
  const DashbordMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeView(),
        ],
      ),
    );
  }
}
