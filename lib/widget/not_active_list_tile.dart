import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/model/drawer_item_model.dart';

class NotActiveListTile extends StatelessWidget {
  const NotActiveListTile({
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
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
