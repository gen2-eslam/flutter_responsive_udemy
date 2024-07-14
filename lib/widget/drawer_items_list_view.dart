import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/model/drawer_item_model.dart';
import 'package:responsive_ui_udemy/widget/drawer_item.dart';
=======
import 'package:responsive_ui/core/utils/app_images.dart';
import 'package:responsive_ui/model/drawer_item_model.dart';
import 'package:responsive_ui/widget/drawer_item.dart';
>>>>>>> 38cb535 (fix vertion)

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(
      title: 'Dashbord',
      image: Assets.imagesDashbord,
    ),
    DrawerItemModel(
      title: 'MyTransaction',
      image: Assets.imagesMyTravsaction,
    ),
    DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      title: 'Wallet Accounts',
      image: Assets.imagesWallet,
    ),
    DrawerItemModel(
      title: 'My Investment',
      image: Assets.imagesInvestments,
    ),
  ];
  num isActive = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            if (isActive != index) {
              setState(() {
                isActive = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 20,
            ),
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: isActive == index,
            ),
          ),
        );
      },
    );
  }
}
