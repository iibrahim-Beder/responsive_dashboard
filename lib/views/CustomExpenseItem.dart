import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/CustomColumnExpenseItem.dart';
import 'package:responsive_dash_board/views/custom_row_expenseitem.dart';

class CustomExpenseItem extends StatelessWidget {
  const CustomExpenseItem(
      {super.key, required this.ontap, required this.isActive});

  final isActive;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: AspectRatio(
        aspectRatio: 0.75,
        child: Card(
            color: isActive ? Color(0xff4EB7F2) : Color(0xffFFFFFF),
            elevation: 0.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                  color: const Color.fromARGB(255, 236, 233, 233), width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomScrollView(
                physics: NeverScrollableScrollPhysics(),
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                slivers: [
                  SliverToBoxAdapter(
                    child: CustomRowExpenseItem(
                      isActive: isActive,
                    ),
                  ),
                  SliverToBoxAdapter(
              
                    child: SizedBox(height: 32,),
                  ),
                  
                  SliverToBoxAdapter(
                      child: CustomColumnExpenseItem(
                                        isActive: isActive,
                                      ))
                ],
              ),
            )),
      ),
    );
  }
}
