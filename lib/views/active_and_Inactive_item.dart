import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';

class InactiveDrowerItem extends StatelessWidget {
  const InactiveDrowerItem({
    super.key,
    required this.drawerModelItem,
  });

  final DrawerModelItem drawerModelItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: ListTile(
        
        leading: SvgPicture.asset(
          drawerModelItem.image,
          fit: BoxFit.scaleDown,
          
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerModelItem.title,
              style: AppStyles.styleRegular16(context)),
        )
      ),
    );
  }
}


class ActiveDrowerItem extends StatelessWidget {
  const ActiveDrowerItem({
    super.key,
    required this.drawerModelItem,
  });

  final DrawerModelItem drawerModelItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        leading: SvgPicture.asset(
          drawerModelItem.image,
           fit: BoxFit.scaleDown,
        
        ),
        title: FittedBox(
           alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(drawerModelItem.title,
              style: AppStyles.styleBold16(context),),
        ),
            trailing: Container(
              color:  Color(0xff4EB7F2),
              width: 3.27,
            
            ),
      ),
    );
  }
}
