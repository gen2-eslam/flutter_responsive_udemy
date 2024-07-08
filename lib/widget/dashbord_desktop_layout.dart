import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/widget/all_expensess.dart';
import 'package:responsive_ui_udemy/widget/custom_drawer.dart';
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
          child: Column(
            children: [
              AllExpensess(),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: QuickInvoice(),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox(),
        ),
      ],
    );
  }
}
