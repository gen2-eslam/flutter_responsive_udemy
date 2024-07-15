import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:responsive_ui/core/utils/color_manager.dart';

class AllExpensessItemHeader extends StatelessWidget {
  final String image;
  final Color? imageBackgroundColor, imageColor;
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor = ColorManager.offWhite,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 50,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                alignment: AlignmentDirectional.center,
                decoration: ShapeDecoration(
                  color: ColorManager.offWhite.withOpacity(0.2),
                  shape: const CircleBorder(),
                ),
                child: SvgPicture.asset(
                  image,
                  colorFilter: ColorFilter.mode(
                    imageColor ?? ColorManager.blue,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: 180 * 3.14 / 180,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imageColor == null ? ColorManager.blue : Colors.white,
          ),
        )
      ],
    );
  }
}
