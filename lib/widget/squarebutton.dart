import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:listitapp/constant.dart';


class CustomButton extends StatelessWidget {

  String text;
  late VoidCallback onpressed;
  String? imagepath;
  TextStyle? textStyle;
  double? textSize;
  Color?color;
  bool hasbackgroundcolor  ;

   // New property for background color
   Color? textColor;
  String? fontfamily;
  Color?textcolor;
  CustomButton({
    super.key,
    required this.text,
    required this.onpressed,
    required int textSize,
   this.imagepath ='',
    this.textStyle,
    this.textColor,
  this.hasbackgroundcolor=true,
 this.fontfamily,

  });



  @override
  Widget build(BuildContext context) {

    Color? backgroundColor;
    if (hasbackgroundcolor) {
      backgroundColor = Colors.blue; // Default background color
    }




    return OutlinedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side:const BorderSide (
            width:1,
          ),
        ),
      ),
      child: Row(
        children: [
          imagepath!=Null&&
              imagepath!.isNotEmpty?
          Image.asset(imagepath!)
              : SizedBox(),
          Padding(
            padding: const EdgeInsets.only(left :12.0),
            child:   Text(
                            text,
                           style: textStyle?.copyWith(
                          fontSize: textSize,
                          fontFamily: fontfamily,
                             color: textColor

                          ) ??
                           TextStyle(fontSize: textSize),

                           ),
          ),


    ],
          ),


    );











  }
}

