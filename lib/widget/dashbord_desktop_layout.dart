import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/widget/all_Expensess_and_quick_invoice_section.dart';
import 'package:responsive_ui_udemy/widget/all_expensess.dart';
import 'package:responsive_ui_udemy/widget/custom_container.dart';
import 'package:responsive_ui_udemy/widget/custom_drawer.dart';
import 'package:responsive_ui_udemy/widget/my_card.dart';
import 'package:responsive_ui_udemy/widget/quick_invoice.dart';

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
        Expanded(
          flex: 2,
          child: CustomContainer(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
