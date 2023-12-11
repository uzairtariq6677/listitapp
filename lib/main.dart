import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listitapp/screen/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414,896),
      child: MaterialApp(
        theme: ThemeData(

        ),
        debugShowCheckedModeBanner: false,


        home: Login(),


      ),
    );
  }
}
