
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/custom_row_for_all_expensebox.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/expense_item_list_view.dart';

class CustomColumnForAllExpenseBox extends StatelessWidget {
  const CustomColumnForAllExpenseBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomRowForAllExpenseBox(),
          ExpenseItemListView(),
        ],
      ),
    );
  }
}


/*

Expanded(
            flex:  18,
            child: CustomRowForAllExpenseBox()),
          Expanded(
            flex: 81,
            child: ExpenseItemListView()),

*/