
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lisit_mobile_app/Screen/Disclaimer/Disclaimer.dart';
import 'package:lisit_mobile_app/Screen/FavouriteScreen/FavouriteScreen.dart';
import 'package:lisit_mobile_app/Screen/HomeScreen/HomeScreen.dart';
import 'package:lisit_mobile_app/Screen/MenuScreen/MenuScreen.dart';
import 'package:lisit_mobile_app/Screen/Privacypolicy/Privacypolicy.dart';
import 'package:lisit_mobile_app/Screen/SpamScreen/SpamScreen.dart';
import 'package:lisit_mobile_app/Screen/reportthisad/Widget/reportthisaddtext.dart';

import 'Screen/LoginScreen/loginscreen.dart';
import 'Screen/TermandCondition/termandcondition.dart';
import 'Screen/practice/practice.dart';
import 'Screen/reportthisad/reporthisad.dart';
import 'const/Theme/Theme.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 667),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                },
          child :MaterialApp(
            title: 'listit',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: CustomeTheme.Light,
            darkTheme: CustomeTheme.Dark,
            home: Termandcondition(),
          )
          );
        }
    );
  }
}





