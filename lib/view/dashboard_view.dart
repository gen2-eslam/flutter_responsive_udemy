import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/core/utils/color_manager.dart';
import 'package:responsive_ui_udemy/core/widget/adaptive_screen.dart';
import 'package:responsive_ui_udemy/widget/dashbord_desktop_layout.dart';
=======
import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/core/widget/adaptive_screen.dart';
import 'package:responsive_ui/widget/dashbord_desktop_layout.dart';
>>>>>>> 38cb535 (fix vertion)

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightGrey3,
      body: AdaptiveScreen(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashbordDesktopLayout(),
      ),
    );
  }
}
