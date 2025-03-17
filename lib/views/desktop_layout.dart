import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/expense_item_list_view.dart';
import 'package:responsive_dash_board/views/custom_drawer.dart';
import 'package:responsive_dash_board/views/mobile_layout.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 20, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),

        Expanded(
          flex: 44,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: TabletLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 34, child: Padding(
            padding: const EdgeInsets.only(top: 40),
          child: MobileLayout(),
        ))

      ],
    );
  }
}
