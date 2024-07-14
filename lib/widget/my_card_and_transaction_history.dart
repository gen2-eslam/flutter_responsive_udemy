import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/widget/custom_container.dart';
import 'package:responsive_ui_udemy/widget/my_card.dart';
import 'package:responsive_ui_udemy/widget/my_card_page_view_with_dots_indecator.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "MyCard",
            style: AppStyles.styleSemiBold20,
          ),
          SizedBox(
            height: 20,
          ),
          MyCardPageViewWithDotsIndecator(),
        ],
      ),
    );
  }
}
