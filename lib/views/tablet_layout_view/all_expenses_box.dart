import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/tablet_layout_view/custom_column_for_all_expensebox.dart';

class AllExpensesBox extends StatelessWidget {
  const AllExpensesBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: CustomColumnForAllExpenseBox(),
    );
  }
}


