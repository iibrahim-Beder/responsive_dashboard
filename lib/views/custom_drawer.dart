import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/models/drawer_model_item.dart';
import 'package:responsive_dash_board/views/active_and_Inactive_item.dart';
import 'package:responsive_dash_board/views/drawer_Items_List.dart';
import 'package:responsive_dash_board/views/user_Info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xffC4C4C4),
              width: 193,
              height: 53,
              child: SvgPicture.asset(
                Assets.imagesGallery,
                fit: BoxFit.scaleDown,
                height: 24,
                width: 24,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 26,
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListVeiw(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                
                InactiveDrowerItem(
                    drawerModelItem: DrawerModelItem(
                        image: Assets.imagesSettings, title: 'Settings')),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: InactiveDrowerItem(
                      drawerModelItem: DrawerModelItem(
                          image: Assets.imagesLogout, title: 'Logout')),
                ),
              SizedBox(height: 48,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

  // SliverFillRemaining(

          //   child:  Expanded(child: SizedBox()),
          // ),

          // SliverToBoxAdapter(child: InactiveDrowerItem(
          //           drawerModelItem: DrawerModelItem(
          //               image: Assets.imagesSettings, title: 'Settings')),
          
          // ),

          // SliverToBoxAdapter(

          //   child: InactiveDrowerItem(
          //           drawerModelItem: DrawerModelItem(
          //               image: Assets.imagesLogout, title: 'Logout')),
          // )
