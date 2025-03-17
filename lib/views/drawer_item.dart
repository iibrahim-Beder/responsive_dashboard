import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';
import 'package:responsive_dash_board/views/active_and_Inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerModelItem, required this.isActive});

  final DrawerModelItem drawerModelItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveDrowerItem(drawerModelItem: drawerModelItem,) : 
     InactiveDrowerItem(drawerModelItem: drawerModelItem);
  }
}
