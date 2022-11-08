import 'package:flutter/material.dart';
import 'package:food_delivery/utile/colors_resource.dart';
import 'package:food_delivery/widget/app_bar_widget/app_bar_widget.dart';
import 'package:food_delivery/widget/custom_text_wedgit.dart';
import 'package:food_delivery/widget/categories_widget/categories_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // custom appbar widget
            AppBarWidget(),

            // Search

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: ColorRecouces.whiteColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(1.0 , 1.0)
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What would you like to have?',
                    hintStyle: TextStyle(color: ColorRecouces.grayColor),
                    fillColor: ColorRecouces.whiteColor,
                    filled: true,
                    prefixIcon: Icon(Icons.search,color: ColorRecouces.lightRedColor,size: 30,),
                    suffixIcon: Icon(Icons.filter_list,color: ColorRecouces.blackColor,size: 28,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorRecouces.whiteColor),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorRecouces.whiteColor),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorRecouces.whiteColor),
                        borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
              ),
            ),

            // Categories
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: CustomAppText(title: 'Categories',textColor: ColorRecouces.blackColor,textFontSize: FontWeight.bold,textSize: 20,),
            ),
            SizedBox(height: 12,),
            SizedBox(height: 100,child: CategoriesWidget())
          ],
      ),
        ),
    ));
  }
}
