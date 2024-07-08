import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_udemy/core/utils/app_styles.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';

class UserInfoListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  const UserInfoListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManager.lightGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          image,
        ),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
