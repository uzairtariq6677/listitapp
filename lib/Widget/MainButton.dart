import 'package:flutter/gestures.dart';

import '../const/Theme/TextTheme/TextWidget/Bold/H2Bold.dart';
import '../const/lib_all.dart';

class MainButton extends StatelessWidget {
  String text;
  Function() ontap;
  Color fillColor;
  bool isfilled;

  MainButton({
    required this.text,required this.ontap,

    super.key,   this.fillColor = const Color(0xFF00CCFF),
    this.isfilled=true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,

      child: Container(
          height: 64.h,
          width: 366.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color:isfilled?fillColor:kredbuttonColor,
            borderRadius: BorderRadius.circular(10.r),

          ),
          child:H2Bold(text: text,color:kbackgrounColor),

      ),
    );
  }
}

