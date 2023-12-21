
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class H2semiBold extends StatelessWidget {
  String text;
  Color? color;
  int maxline;
  TextAlign align;
  H2semiBold({
    required this.text,
    this.align = TextAlign.start,
    this.maxline = 2,
    this.color,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final defaultColor=color?? Theme.of(context).primaryColor;
    return Text(
      textAlign: align,
      maxLines: maxline,

      text,
      style: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: defaultColor,
        overflow: TextOverflow.ellipsis,
            fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
