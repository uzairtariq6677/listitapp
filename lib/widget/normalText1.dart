import 'package:flutter/material.dart';
import 'package:listitapp/constant.dart';

class NormalText1 extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight weight;
  String fontFamily;


  NormalText1({
    required this.text,
    this.size = 20,
    this.color = KPrimaryColor1,
    this.weight = FontWeight.w500,
    this.fontFamily='Montserrat',

    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        fontFamily: fontFamily,
      ),);
  }

}



