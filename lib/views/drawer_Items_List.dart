import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';
import 'package:responsive_dash_board/views/drawer_item.dart';

class DrawerItemsListVeiw extends StatefulWidget {
  const DrawerItemsListVeiw({super.key});

  @override
  State<DrawerItemsListVeiw> createState() => _DrawerItemsListVeiwState();
}

class _DrawerItemsListVeiwState extends State<DrawerItemsListVeiw> {
  int activeIndex = 0;

  static List<DrawerModelItem> items = [
    DrawerModelItem(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerModelItem(image: Assets.imagesMyTransctions, title: 'Transaction'),
    DrawerModelItem(image: Assets.imagesStatistics, title: 'Statics'),
    DrawerModelItem(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerModelItem(image: Assets.imagesMyInvestments, title: 'My Investments'),
    // DrawerModelItem(image: '', title: ''),
    // DrawerModelItem(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    // DrawerModelItem(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
    
        itemCount: items.length,
        itemBuilder: (context, index) {
        
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: DrawerItem(
                drawerModelItem: items[index],
                isActive: index == activeIndex,
              ),
            ),
          );
        });
  }
}
