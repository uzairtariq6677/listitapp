import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class H1semiBold extends StatelessWidget {
  String text;
  Color? color;
  H1semiBold ({
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
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
        color: defaultColor,
        overflow: TextOverflow.ellipsis,
            fontFamily: GoogleFonts.montserrat().fontFamily,

      ),


    );
  }
}
