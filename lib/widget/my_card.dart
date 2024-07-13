import 'package:flutter/material.dart';
import 'package:responsive_ui_udemy/core/utils/app_images.dart';
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / (215),
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
        
      ),
    );
  }
}
