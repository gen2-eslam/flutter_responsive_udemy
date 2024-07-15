import 'package:flutter/material.dart';
import 'package:responsive_ui/core/services/custom_scroll_behavior.dart';
import 'package:responsive_ui/core/utils/app_images.dart';
import 'package:responsive_ui/model/all_expensess_item_model.dart';
import 'package:responsive_ui/widget/active_all_expensess_item_small_dev.dart';
import 'package:responsive_ui/widget/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final List<AllExpensesItemModel> allExpensesItemModel = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Income',
      amount: "\$ 120.00",
      date: 'April 20, 2022',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      amount: "\$ 120.00",
      date: 'April 20, 2022',
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      amount: "\$ 120.00",
      date: 'April 20, 2022',
    ),
  ];
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= 480
        ? Row(
            children: allExpensesItemModel.asMap().entries.map((e) {
              int index = e.key;
              AllExpensesItemModel allExpensesItemModel = e.value;

              return Expanded(
                child: Padding(
                  padding: index == 1
                      ? const EdgeInsets.symmetric(horizontal: 12)
                      : EdgeInsets.zero,
                  child: GestureDetector(
                    onTap: () {
                      if (isActive != index) {
                        setState(() {
                          isActive = index;
                        });
                      }
                    },
                    child: AllExpensessItem(
                      allExpensesItemModel: allExpensesItemModel,
                      isSelected: index == isActive,
                    ),
                  ),
                ),
              );
            }).toList(),
          )
        : AspectRatio(
            aspectRatio: 2 / 1,
            child: ScrollConfiguration(
              behavior: MyCustomScrollBehavior(),
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: allExpensesItemModel.length,
                itemBuilder: (context, index) =>
                    ActiveAllExpensessItemSmallDevice(
                  allExpensesItemModel: allExpensesItemModel[index],
                ),
              ),
            ),
          );
  }
}
