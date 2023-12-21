import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Parabold extends StatelessWidget {
  String text;
  Color? color;
  Parabold ({
    required this.text,
    this.color,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final defaultColor=color?? Theme.of(context).primaryColor;
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: defaultColor,
        overflow: TextOverflow.ellipsis,
        fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
