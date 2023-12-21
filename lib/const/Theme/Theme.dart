import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lisit_mobile_app/const/const colors.dart';

class CustomeTheme {
  static var Light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor:kbackgrounColor ,
    primaryColor: ksecondaryColor,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor:kbackgrounColor,
    ),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
  static var Dark=ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark
    ,seedColor:ksecondaryColor),
    fontFamily: GoogleFonts.montserrat().fontFamily,
  );
}
