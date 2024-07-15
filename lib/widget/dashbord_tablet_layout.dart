import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/all_Expensess_and_quick_invoice_section.dart';
import 'package:responsive_ui/widget/custom_drawer.dart';
import 'package:responsive_ui/widget/dashbord_mobile_layout.dart';
import 'package:responsive_ui/widget/income_view.dart';
import 'package:responsive_ui/widget/my_card_and_transaction_history.dart';

class DashbordTabletLayout extends StatelessWidget {
  const DashbordTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  DashbordMobileLayout(),
                ],
              ),
            )),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
