
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomRowForAllExpenseBox extends StatelessWidget {
  const CustomRowForAllExpenseBox({
    super.key, this.isActive,
  });
  final isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: Color(0xff064061)),
        ),
    
        Text(
          'Tebsen',
          style: AppStyles.styleSemiBold20(context)
              .copyWith(color: Color(0xff064061)),
        ),
      ],
    );
  }
}
