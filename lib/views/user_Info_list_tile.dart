import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.image, required this.title, required this.subtitle});

  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 64,
      // width: 263,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAFAFA),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.090,
        child: ListTile(
          leading: SvgPicture.asset(
            image,
            fit: BoxFit.scaleDown,
            height: 32,
            width: 32,
          ),
          title: Text(title, // Large title
              style: AppStyles.styleBold16(context)
                  .copyWith(color: Color(0xff064061))),
          subtitle: Text(
            subtitle, // Small subtitle
            style: AppStyles.styleRegular12(context), // Optional subtitle color
          ),
        ),
      ),
    );
  }
}
