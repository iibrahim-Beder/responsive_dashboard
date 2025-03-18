import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomColumnExpenseItem extends StatelessWidget {
  const CustomColumnExpenseItem({super.key, required this.isActive});

  final isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Income",
                style: AppStyles.styleBold16(context).copyWith(
                    color: isActive ? Color(0xffFFFFFF) : Color(0xff064061)),
              )),
          SizedBox(
            height: 8,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "April 2022",
                style: AppStyles.styleRegular14(context).copyWith(
                    color: isActive ? Color(0xffFFFFFF) : Color(0xffAAAAAA)),
              )),
          SizedBox(
            height: 16,
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("\$20,129",
                  style: isActive
                      ? AppStyles.styleSemiBold24(context)
                          .copyWith(color: Color(0xffFFFFFF))
                      : AppStyles.styleSemiBold24(context))
                      
                      ),
      
      
        ],
      ),
    );
  }
}
