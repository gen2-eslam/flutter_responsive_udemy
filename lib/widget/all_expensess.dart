import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/model/all_expensess_item_model.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_header.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_item.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_list_view.dart';
=======
import 'package:responsive_ui/core/utils/app_images.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/all_expensess_item_model.dart';
import 'package:responsive_ui/widget/all_expensess_header.dart';
import 'package:responsive_ui/widget/all_expensess_item.dart';
import 'package:responsive_ui/widget/all_expensess_list_view.dart';
>>>>>>> 38cb535 (fix vertion)

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView(),
        ],
      ),
    );
  }
}
