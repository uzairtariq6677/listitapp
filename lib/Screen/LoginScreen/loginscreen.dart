import '../../const/lib_all.dart';
import '../SignupScreen/SignupScreen.dart';
import 'Widget/LoginmainButton.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
                    children: [
            SizedBox(height: 33.h),
            Padding(
              padding: EdgeInsets.only(bottom:15.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SizedBox.shrink(),
                //Logo image
                SizedBox(
                    width: 73.w,
                    height: 45.h,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                    )),
                //icon close
                InkWell(onTap: () {}, child: Icon(Icons.close)),
              ]),
            ),
            //Main login Image
            Padding(
              padding:  EdgeInsets.only(bottom:10.h),
              child: SizedBox(
                  width: 307.92.w,
                  height: 243.99.h,
                  child: Image.asset(
                    'assets/loginScreen.png',
                    fit: BoxFit.contain,
                  )),
            ),
            //Login Text
            Padding(
              padding:  EdgeInsets.only(bottom:18.h),
              child: H1Bold(
                text: 'Login',
                color: ksecondaryColor,
              ),
            ),
            //Facebook Button
            Loginmainbutton(image: 'assets/faceBookLogo.png', text: 'Continue With Facebook', onTap: () {  },),
            // Google Button
            Loginmainbutton(image: 'assets/googleLogo.png', text: 'Continue With Facebook', onTap: () {  },),
            //iPhone button
            Loginmainbutton(image: 'assets/appleLogo.png', text: 'Continue With Facebook', onTap: () {  },),
            //email button
            Loginmainbutton(image: 'assets/emailLogo.png', text: 'Continue With Facebook', onTap: () {  },),
            //SignUp button
            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));},
              child:H2semiBold(text: 'Don’t have an account? Create account ',)

            )
                    ],
                  ),
          )),
    );
  }
}


