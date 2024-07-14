import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/model/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel model;
  const UserInfoListTile({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.lightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            model.image,
          ),
          title: Text(
            model.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            model.subtitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
