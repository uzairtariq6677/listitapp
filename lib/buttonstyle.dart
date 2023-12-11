import 'package:flutter/material.dart';
import 'package:listitapp/constant.dart';

class CustomButton1 extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final String? imagepath;
  final TextStyle? textStyle;
  final double? textSize;
  final Color? background;
  final String? fontfamily;
  bool hasBackgroundColor;

  CustomButton1({
    Key? key,
    required this.text,
    required this.onpressed,
    required double  this.textSize,
    this.imagepath = '',
    this.textStyle,
    this.background,
    this.fontfamily,
    required this.hasBackgroundColor,



  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color?backgroundColor;
    if(hasBackgroundColor!=null){
      backgroundColor=KPrimaryColor1;
    }


    return OutlinedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: const BorderSide(
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          if (imagepath != null && imagepath!.isNotEmpty)
            Image.asset(imagepath!),
          const SizedBox(width: 12.0),
          Text(
            text,
            style: textStyle?.copyWith(
              fontSize: textSize,
              fontFamily: fontfamily,
            ) ??
                TextStyle(fontSize:textSize,),
          ),
        ],
      ),
    );
  }
}
