import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/model/drawer_item_model.dart';

class ActiveListTile extends StatelessWidget {
  const ActiveListTile({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsetsDirectional.only(
        start: 20,
      ),
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleSemiBold16,
      ),
      trailing: const VerticalDivider(
        thickness: 2,
        color: ColorManager.blue,
      ),
    );
  }
}
