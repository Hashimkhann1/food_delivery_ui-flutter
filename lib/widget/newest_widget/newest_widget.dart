import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';


class NewestWidget extends StatelessWidget {
  NewestWidget({Key? key}) : super(key: key);

  List<String> imageNames = ['biryani.png','burger.png','pizza.png','salan.png','drink.png','biryani.png','burger.png','pizza.png','salan.png','drink.png'];
  List<String> foodDescripition = ['Hot biryani, We Provider Our Greate Foods','Taste Our Hot Burger, We Provider Our Greate Foods','Hot pizza, We Provider Our Greate Foods','Taste Our Chicken Salan, We Provider Our Greate Foods','Taste Our Cold Drink,, We Provider Our Greate Foods','Hot biryani, We Provider Our Greate Foods','Taste Our Hot Burger, We Provider Our Greate Foods','Hot pizza, We Provider Our Greate Foods','Taste Our Chicken Salan, We Provider Our Greate Foods','Taste Our Cold Drink,, We Provider Our Greate Foods'];
  List<String> foodName = ['Biryani','Hot Burger' , 'Hot Pizza' , 'Checken Salan','Cold Drink','Biryani','Hot Burger' , 'Hot Pizza' , 'Checken Salan','Cold Drink',];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: Column(
          children: [
            for(int i = 0; i < 10; i++)
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 380,
                height: 160,
                decoration: BoxDecoration(
                  color: ColorRecouces.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(1.0,1.0)
                    )
                  ]
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset('assets/images/${imageNames[i]}',width: 140,height: 120,),
                      ),
                    ),
                    Container(
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomAppText(title: foodName[i].toString(),textSize: 22,textFontWeight: FontWeight.bold,),
                          CustomAppText(title: foodDescripition[i].toString(),textSize: 16,),
                          RatingBar.builder(
                            initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 24,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context , _) => Icon(Icons.star,color: ColorRecouces.lightRedColor,),
                              onRatingUpdate: (index) {
                          }),
                          CustomAppText(title: '\$10',textSize: 20,textColor: ColorRecouces.lightRedColor,textFontWeight: FontWeight.bold,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite_outline,color: ColorRecouces.lightRedColor,),
                          Icon(CupertinoIcons.cart,color: ColorRecouces.lightRedColor,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
