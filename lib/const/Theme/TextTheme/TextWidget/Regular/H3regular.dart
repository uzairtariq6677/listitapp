import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class  H3Regular extends StatelessWidget {
  String text;
  Color? color;
  int maxline;
  H3Regular ({
    required this.text,
    this.color,
    this.maxline=2,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final defaultColor=color?? Theme.of(context).primaryColor;
    return Text(
      text,
maxLines: maxline,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,

        color: defaultColor,
        overflow: TextOverflow.ellipsis,
        fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
