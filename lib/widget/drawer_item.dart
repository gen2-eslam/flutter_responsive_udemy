import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/model/drawer_item_model.dart';
import 'package:responsive_ui_udemy/widget/active_list_tile.dart';
import 'package:responsive_ui_udemy/widget/not_active_list_tile.dart';
=======
import 'package:responsive_ui/model/drawer_item_model.dart';
import 'package:responsive_ui/widget/active_list_tile.dart';
import 'package:responsive_ui/widget/not_active_list_tile.dart';
>>>>>>> 38cb535 (fix vertion)

class DrawerItem extends StatelessWidget   {
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveListTile(
            drawerItemModel: drawerItemModel,
          )
        : NotActiveListTile(
            drawerItemModel: drawerItemModel,
          );
  }
}
