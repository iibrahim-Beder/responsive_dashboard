
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';

class CustomRowExpenseItem extends StatelessWidget {
  const CustomRowExpenseItem({
    super.key,
     required this.isActive
  });

  final isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffFAFAFA).withOpacity(0.2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: SvgPicture.asset(
              Assets.imagesBalance, 
              fit: BoxFit.cover,
              height: 32,
              width: 32,
              color: isActive ? Color(0xffFAFAFA) : Color(0xff4EB7F2) ,
            ),
          ),
          SvgPicture.asset(Assets.arrow_right, color: isActive ? Color(0xffFFFFFF):  Color(0xff064061),)
        ],
      ),
    );
  }
}
