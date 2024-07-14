import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/widget/custom_button.dart';
import 'package:responsive_ui_udemy/widget/title_text_field.dart';
=======
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/widget/custom_button.dart';
import 'package:responsive_ui/widget/title_text_field.dart';
>>>>>>> 38cb535 (fix vertion)

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: "Item mount",
                hint: "USD",
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: "Add more details",
                backgroundColor: Colors.transparent,
                textColor: ColorManager.blue,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              title: "Send Money",
              textColor: ColorManager.white,
              onPressed: () {},
            )),
          ],
        )
      ],
    );
  }
}
