import 'package:flutter/material.dart';


class CustomAppText extends StatelessWidget {
  CustomAppText({Key? key,this.title,this.textColor,this.textFontSize,this.textSize}) : super(key: key);
  String? title;
  Color? textColor;
  FontWeight? textFontSize;
  double? textSize;

  @override
  Widget build(BuildContext context) {
    return Text(title.toString(),style: TextStyle(
      fontSize: textSize,
      fontWeight: textFontSize,
      color: textColor,
    ),);
  }
}
