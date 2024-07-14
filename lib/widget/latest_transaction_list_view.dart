import 'package:flutter/material.dart';

import 'package:responsive_ui/core/services/custom_scroll_behavior.dart';
import 'package:responsive_ui/core/utils/app_images.dart';
import 'package:responsive_ui/model/user_info_model.dart';
import 'package:responsive_ui/widget/user_info_list_tile.dart';

class LatestTansactionListView extends StatelessWidget {
  static List<UserInfoModel> users = [
    UserInfoModel(
      title: 'John',
      image: Assets.imagesFrame,
      subtitle: 'demo@gmail',
    ),
    UserInfoModel(
      title: 'John',
      image: Assets.imagesFrame2,
      subtitle: 'demo@gmail',
    ),
    UserInfoModel(
      title: 'John',
      image: Assets.imagesFrame,
      subtitle: 'demo@gmail',
    ),
  ];
  const LatestTansactionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: SingleChildScrollView(
        controller: ScrollController(),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: users
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    model: e,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: users.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(
    //       child: UserInfoListTile(
    //         model: users[index],
    //       ),
    //     ),
    //   ),
    // );
  }
}
