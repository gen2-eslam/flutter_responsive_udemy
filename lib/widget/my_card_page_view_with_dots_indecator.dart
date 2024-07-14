import 'package:flutter/material.dart';

import 'package:responsive_ui/core/services/custom_scroll_behavior.dart';
import 'package:responsive_ui/widget/custom_dot_indecator.dart';
import 'package:responsive_ui/widget/dots_indecator.dart';
import 'package:responsive_ui/widget/my_card.dart';

class MyCardPageViewWithDotsIndecator extends StatefulWidget {
  const MyCardPageViewWithDotsIndecator({super.key});

  @override
  State<MyCardPageViewWithDotsIndecator> createState() =>
      _MyCardPageViewWithDotsIndecatorState();
}

class _MyCardPageViewWithDotsIndecatorState
    extends State<MyCardPageViewWithDotsIndecator> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 420 / 215,
          child: ScrollConfiguration(
            behavior: MyCustomScrollBehavior(),
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              },
              itemBuilder: (context, index) => const MyCard(),
              itemCount: 3,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndecator(selectedItem: selectedItem),
      ],
    );
  }
}
