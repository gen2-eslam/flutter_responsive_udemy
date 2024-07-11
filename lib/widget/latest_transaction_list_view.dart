import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/model/user_info_model.dart';
import 'package:responsive_ui_udemy/widget/user_info_list_tile.dart';

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
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: users.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => IntrinsicWidth(
          child: UserInfoListTile(
            model: users[index],
          ),
        ),
      ),
    );
  }
}
