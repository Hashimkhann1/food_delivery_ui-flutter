import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: ColorRecouces.lightRedColor
                ),
                accountName: CustomAppText(title: 'M Hashim Khan',textSize: 20.0,textFontWeight: FontWeight.bold,),
                accountEmail: CustomAppText(title: 'hashimkhan199999@gmai.com',textFontWeight: FontWeight.bold,),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.jpg'),),
              )
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home,color: ColorRecouces.lightRedColor,),
            title: CustomAppText(title: 'Home',textSize: 18,textFontWeight: FontWeight.bold,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person,color: ColorRecouces.lightRedColor,),
            title: CustomAppText(title: 'My Account',textSize: 18,textFontWeight: FontWeight.bold,),
          ),
          ListTile(
            leading: Icon(Icons.favorite,color: ColorRecouces.lightRedColor,),
            title: CustomAppText(title: 'My Order',textSize: 18,textFontWeight: FontWeight.bold,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings,color: ColorRecouces.lightRedColor,),
            title: CustomAppText(title: 'Settings',textSize: 18,textFontWeight: FontWeight.bold,),
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app,color: ColorRecouces.lightRedColor,),
            title: CustomAppText(title: 'Log Out',textSize: 18,textFontWeight: FontWeight.bold,),
          ),
        ],
      ),
    );
  }
}
