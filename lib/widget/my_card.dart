import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/core/utils/app_images.dart';
import 'package:responsive_ui/core/utils/app_styles.dart';
import 'package:responsive_ui/core/utils/color_manager.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.blue,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                "Name Card",
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Name Card",
                style: AppStyles.styleMedium20.copyWith(
                  color: Colors.white,
                ),
              ),
              trailing: SvgPicture.asset(
                Assets.imagesGallery,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: ColorManager.white,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16.copyWith(
                      color: ColorManager.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 27,
            ),
          ],
        ),
      ),
    );
  }
}
