import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/app_bar_widget/app_bar_widget.dart';
import 'package:food_delivery/widget/cart_bottom_anvbar/cart_bottom_navbar.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';
import 'package:food_delivery/widget/drawer/drawer_widget.dart';


class ItemPages extends StatelessWidget {
  const ItemPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Image.asset('assets/images/pizza.png',
                height: 300,
              ),
            ), Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: ColorRecouces.grayColor.withOpacity(0.1),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60,bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context , _) => Icon(Icons.star,color: ColorRecouces.lightRedColor,),
                                onRatingUpdate: (index) {}),
                            CustomAppText(title: '\$10',textSize: 22,textFontWeight: FontWeight.bold,)
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10 , bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomAppText(title: 'Hot Pizza ',textSize: 28,textFontWeight: FontWeight.bold,),
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(5.0 ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorRecouces.lightRedColor
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(CupertinoIcons.minus,color: ColorRecouces.whiteColor,size: 20,),
                                CustomAppText(title: '1',textFontWeight: FontWeight.bold,textSize: 16,textColor: ColorRecouces.whiteColor,),
                                Icon(CupertinoIcons.plus,color: ColorRecouces.whiteColor,size: 20,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CustomAppText(title: 'Tast our hot Pizza at low Price.',textSize: 18,textFontWeight: FontWeight.bold,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: CustomAppText(title: 'Delivery Time:',textSize: 16,textFontWeight: FontWeight.bold,),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.clock,color: ColorRecouces.lightRedColor,),
                              CustomAppText(title: '30 Minutes',textSize: 16,textFontWeight: FontWeight.w600,)
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: CartBottomNavbar(btnTitle: 'Add To Cart',),
    );
  }
}
