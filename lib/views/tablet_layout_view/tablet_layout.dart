import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/all_expenses_box.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/quickI_nvoke_box.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 320, child: AllExpensesBox())),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 20,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 500,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: QuickInvokeBox(),
            ),
          ),
        )
      ],
    );
  }
}



/*

 Expanded(flex: 36, child: AllExpensesBox()),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 63,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: QuickInvokeBox(),
                ),
              )

*/