import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:responsive_ui_udemy/view/dashboard_view.dart';
=======
import 'package:responsive_ui/view/dashboard_view.dart';
>>>>>>> 38cb535 (fix vertion)

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // scrollBehavior: const MaterialScrollBehavior().copyWith(
      //   dragDevices: {
      //     PointerDeviceKind.mouse,
      //     PointerDeviceKind.touch,
      //     PointerDeviceKind.stylus,
      //     PointerDeviceKind.unknown
      //   },
      // ),
      title: 'Flutter Demo',
      home: DashbordView(),
    );
  }
}
