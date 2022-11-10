import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';


class CartBottomNavbar extends StatelessWidget {
  String? btnTitle;
  final Icon? btnIcon;
  CartBottomNavbar({Key? key,this.btnTitle,this.btnIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            child: Row(
              children: [
                CustomAppText(title: 'Total',textSize: 19,textFontWeight: FontWeight.bold,),
                const SizedBox(width: 15,),
                CustomAppText(title: '\$80',textSize: 19,textFontWeight: FontWeight.bold,),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                backgroundColor: ColorRecouces.lightRedColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
                onPressed: () {},
                child: Row(
                  children: [
                    // Icon(btnIcon),
                    CustomAppText(title: btnTitle,textSize: 16,),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
