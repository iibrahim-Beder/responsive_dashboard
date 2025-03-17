import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/CustomExpenseItem.dart';

class ExpenseItemListView extends StatefulWidget {
  const ExpenseItemListView({super.key});

  @override
  State<ExpenseItemListView> createState() => _ExpenseItemListViewState();
}

class _ExpenseItemListViewState extends State<ExpenseItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 216,
      child: ListView.builder(
        itemCount: 10,
        //shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomExpenseItem(
            ontap: () {
              setState(() {
                
              });
              activeIndex = index;
            }, isActive: index == activeIndex,
            
          );
        },
      ),
    );
  }
}
