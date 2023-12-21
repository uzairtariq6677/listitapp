import 'package:google_fonts/google_fonts.dart';

import '../../../const/lib_all.dart';

class SignupInputTextField extends StatelessWidget {
  String helpertext;
  Widget Icon;
  TextEditingController Controller;
  bool isobsecureText;



  SignupInputTextField({
    required this.helpertext,required this.Icon,required this.Controller,required this.isobsecureText
  });

  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0),
      child: Container(
          height: 64.h,
          width:366.w,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.sp,
                  offset:Offset(0.5,1),
                )
              ]
          ),
          child: TextField(
            obscureText: true,
            controller: Controller,
            decoration: InputDecoration(
              hintText: helpertext,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                fontFamily: GoogleFonts.montserrat().fontFamily,
                fontWeight: FontWeight.w400,
                color: khelperTextColor,
              ),
              prefixIcon: Icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none,
              ),
            ),
          ),

      ),
    );
  }
}