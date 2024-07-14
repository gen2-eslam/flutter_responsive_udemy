import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/core/widget/adaptive_screen.dart';
import 'package:responsive_ui/widget/dashbord_desktop_layout.dart';

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
