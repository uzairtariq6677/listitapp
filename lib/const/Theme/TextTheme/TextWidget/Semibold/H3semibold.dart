import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class H3semibold extends StatelessWidget {
  String text;
  Color? color;
  int maxline;
  TextAlign Align;



  H3semibold ({
    required this.text,
    this.color,
    this.maxline=2,
    this.Align=TextAlign.start,


    super.key,
  });
  @override
  Widget build(BuildContext context) {

    final defaultColor=color?? Theme.of(context).primaryColor;
    return Text(
      textAlign:Align,
      text,
      maxLines: maxline,
      style: TextStyle(
        fontSize: 14.sp,

        fontWeight: FontWeight.w600,
        color: defaultColor,
        overflow: TextOverflow.ellipsis,
            fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
