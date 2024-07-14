import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/widget/all_expensess.dart';
import 'package:responsive_ui_udemy/widget/quick_invoice.dart';
=======
import 'package:responsive_ui/widget/all_expensess.dart';
import 'package:responsive_ui/widget/quick_invoice.dart';
>>>>>>> 38cb535 (fix vertion)

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpensess(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
