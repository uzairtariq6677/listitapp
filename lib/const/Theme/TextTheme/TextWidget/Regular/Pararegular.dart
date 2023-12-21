import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pararegular extends StatelessWidget {
  String text;
  Color? color;
 int maxline;
  Pararegular ({
    required this.text,
    this.color,
    super.key,
  this.maxline=2,
  });
  @override
  Widget build(BuildContext context) {
    final defaultColor=color?? Theme.of(context).primaryColor;
    return Text(
      maxLines:maxline,
      text,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: defaultColor,
        overflow: TextOverflow.ellipsis,
        fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
