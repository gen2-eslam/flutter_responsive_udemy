import 'package:flutter/material.dart';

import 'package:responsive_ui/core/utils/color_manager.dart';
import 'package:responsive_ui/core/utils/size_config.dart';
import 'package:responsive_ui/core/widget/adaptive_screen.dart';
import 'package:responsive_ui/widget/custom_drawer.dart';
import 'package:responsive_ui/widget/dashbord_desktop_layout.dart';
import 'package:responsive_ui/widget/dashbord_mobile_layout.dart';
import 'package:responsive_ui/widget/dashbord_tablet_layout.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({super.key});

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: ColorManager.blue,
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                ),
                color: ColorManager.white,
              ),
            )
          : null,
      backgroundColor: ColorManager.lightGrey3,
      drawer:
          MediaQuery.sizeOf(context).width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveScreen(
        mobileLayout: (context) => const DashbordMobileLayout(),
        tabletLayout: (context) => const DashbordTabletLayout(),
        desktopLayout: (context) => const DashbordDesktopLayout(),
      ),
    );
  }
}
