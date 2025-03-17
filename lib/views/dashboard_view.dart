import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/adaptive_layout.dart';
import 'package:responsive_dash_board/views/desktop_layout.dart';
import 'package:responsive_dash_board/views/mobile_layout.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
      desktopLayout: (context) => DesktopLayout(),
    );
  }
}
