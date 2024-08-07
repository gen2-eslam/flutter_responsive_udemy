import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/model/drawer_item_model.dart';
import 'package:responsive_ui_udemy/model/user_info_model.dart';
import 'package:responsive_ui_udemy/widget/drawer_items_list_view.dart';
import 'package:responsive_ui_udemy/widget/not_active_list_tile.dart';
import 'package:responsive_ui_udemy/widget/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: UserInfoModel(
                title: 'Lekan Okeowo',
                image: Assets.imagesFrame2,
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                NotActiveListTile(
                  drawerItemModel: DrawerItemModel(
                    title: "Settings",
                    image: Assets.imagesSetting,
                  ),
                ),
                NotActiveListTile(
                  drawerItemModel: DrawerItemModel(
                    title: "Logout account",
                    image: Assets.imagesLogout,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
