import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/widget/custom_container.dart';
import 'package:responsive_ui_udemy/widget/custom_text_field.dart';
import 'package:responsive_ui_udemy/widget/latest_transction.dart';
import 'package:responsive_ui_udemy/widget/quick_invoice_form.dart';
import 'package:responsive_ui_udemy/widget/quick_invoice_header.dart';
import 'package:responsive_ui_udemy/widget/title_text_field.dart';
=======
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/custom_container.dart';
import 'package:responsive_ui/widget/custom_text_field.dart';
import 'package:responsive_ui/widget/latest_transction.dart';
import 'package:responsive_ui/widget/quick_invoice_form.dart';
import 'package:responsive_ui/widget/quick_invoice_header.dart';
import 'package:responsive_ui/widget/title_text_field.dart';
>>>>>>> 38cb535 (fix vertion)

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: ColorManager.offWhite,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
