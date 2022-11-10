import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/app_bar_widget/app_bar_widget.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';
import 'package:food_delivery/widget/drawer/drawer_widget.dart';

import '../../widget/cart_bottom_anvbar/cart_bottom_navbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                      padding: EdgeInsets.only(top: 20,left: 10,bottom: 10),
                    child: CustomAppText(title: 'Order List',textSize: 30,textFontWeight: FontWeight.bold,),
                  ),
                  for(int i = 0; i < 3; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                        height: 100,
                      decoration: BoxDecoration(
                        color: ColorRecouces.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(1.0,1.0)
                          )
                        ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset('assets/images/pizza.png',width: 100,height: 100,),
                          ),
                          Container(
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomAppText(title: 'Hot Pizza',textSize: 20,textFontWeight: FontWeight.bold,),
                                CustomAppText(title: 'Tast Our Hot Pizza',),
                                CustomAppText(title: '\$10',textSize: 20,textFontWeight: FontWeight.bold,textColor: ColorRecouces.lightRedColor,)
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ColorRecouces.lightRedColor,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.minus,color: ColorRecouces.whiteColor,),
                                  CustomAppText(title: '2',textColor: ColorRecouces.whiteColor,textSize: 18,),
                                  Icon(CupertinoIcons.minus,color: ColorRecouces.whiteColor,),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: ColorRecouces.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(1.0,1.0)
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomAppText(title: 'Items: ',textSize: 20,),
                                CustomAppText(title: '\$10',textSize: 20,),
                              ],
                            ),
                          ),
                          Divider(color: ColorRecouces.blackColor,),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomAppText(title: 'Sub-Total: ',textSize: 20,),
                                CustomAppText(title: '\$60',textSize: 20,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomAppText(title: 'Delievery: ',textSize: 20,),
                                CustomAppText(title: '\$20',textSize: 20,),
                              ],
                            ),
                          ),
                          Divider(color: ColorRecouces.blackColor,),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomAppText(title: 'Total: ',textSize: 20,),
                                CustomAppText(title: '\$80',textSize: 20,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavbar(btnTitle: 'Order Now',),
    );
  }
}
