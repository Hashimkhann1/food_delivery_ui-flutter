import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/view/item_page/item_page.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';


class PopularWidget extends StatelessWidget {
  PopularWidget({Key? key}) : super(key: key);

  List<String> imagesName = ['burger.png','pizza.png','salan.png','biryani.png','burger.png','pizza.png','salan.png','biryani.png','burger.png','pizza.png','salan.png','biryani.png',];
  List<String> foodDescripition = ['Taste Our Hot Burger','Hot pizza','Taste Our Chicken Salan','Hot biryani','Taste Our Hot Burger','Hot pizza','Taste Our Chicken Salan','Hot biryani','Taste Our Hot Burger','Hot pizza','Taste Our Chicken Salan','Hot biryani', ];
  List<String> foodName = ['Hot Burger' , 'Pizza' , 'Checken Salan' , 'Biryani','Hot Burger' , 'Pizza' , 'Chicken Salan' , 'Biryani','Hot Burger' , 'Pizza' , 'Checken Salan' , 'Biryani'];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 5),
        child: Row(
          children: [
            for(int i = 0; i < 12; i++)
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
              child: Container(
                width: 186,
                height: 230,
                decoration: BoxDecoration(
                  color: ColorRecouces.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(1.0,1.0)
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPages()));},
                        child: Container(
                          alignment: Alignment.center,
                          child: Image.asset('assets/images/${imagesName[i]}',width: 146,height: 146,),
                        ),
                      ),
                      CustomAppText(title: foodName[i].toString(),textSize: 24.0,textFontWeight: FontWeight.w800,),
                      const SizedBox(height: 2,),
                      CustomAppText(title: foodDescripition[i].toString(),),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomAppText(title: '\$10',textSize: 20,textFontWeight: FontWeight.bold,textColor: ColorRecouces.lightRedColor,),
                          Icon(Icons.favorite_outline,color: ColorRecouces.lightRedColor,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
