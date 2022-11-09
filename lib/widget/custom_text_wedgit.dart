import 'package:flutter/material.dart';


class CustomAppText extends StatelessWidget {
  CustomAppText({Key? key,this.title,this.textColor,this.textFontWeight,this.textSize}) : super(key: key);
  String? title;
  Color? textColor;
  FontWeight? textFontWeight;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    return Text(title.toString(),style: TextStyle(
      fontSize: textSize,
      fontWeight: textFontWeight,
      color: textColor,
    ),);
  }
}
