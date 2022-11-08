import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key}) : super(key: key);

  List<String> imagesName = ['drink.png','biryani.png','burger.png','pizza.png','salan.png','biryani.png','burger.png','pizza.png'];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context , index) {
          return Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorRecouces.whiteColor,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(1.0 , 1.0)
                        )
                      ]
                  ),
                  child: Image.asset('assets/images/${imagesName[index]}',width: 56,height: 56,),
                ),
              )
            ],
          );
        });
  }
}
