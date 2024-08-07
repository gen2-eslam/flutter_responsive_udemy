import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/model/all_expensess_item_model.dart';
import 'package:responsive_ui_udemy/widget/active_all_expensess_item.dart';
import 'package:responsive_ui_udemy/widget/all_expensess_item_header.dart';
import 'package:responsive_ui_udemy/widget/in_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  const AllExpensessItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {

    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      crossFadeState:
          isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: ActiveAllExpensessItem(
        allExpensesItemModel: allExpensesItemModel,
      ),
      secondChild: InActiveAllExpensessItem(
        allExpensesItemModel: allExpensesItemModel,
      ),
    );
  }
}
