import '../../Bottomnavigationbar/bottomnaviagtionbar.dart';
import '../../Widget/MainButton.dart';
import '../../const/lib_all.dart';
import 'Widget/SignupTextField.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  TextEditingController FullnameContoller = TextEditingController();
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.only(bottom: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.shrink(),
                  SizedBox(
                      height: 45.h,
                      width: 73.w,
                      child: Image.asset(
                        'assets/logo.png',
                      )),
                  InkWell(
                    onTap: () {},
                    child: Icon(Icons.close),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: SizedBox(
                child: Column(children: [
                  H1Bold(
                    text: 'Sign Up',
                    color: ksecondaryColor,
                  ),
                  SizedBox(height: 2),
                  H3Regular(
                    text: 'Find your dream car!',
                    color: ksecondaryColor,
                  )
                ]),
              ),
            ),
            //
            SignupInputTextField(
              helpertext: 'Full Name',
              Icon: Icon(Icons.person),
              Controller: FullnameContoller,
              isobsecureText: false,
            ),
            SignupInputTextField(
              helpertext: 'Email',
              Icon: Icon(Icons.email),
              Controller: emailContoller,
              isobsecureText: false,
            ),
            SignupInputTextField(
              helpertext: 'Password',
              Icon: Icon(Icons.password),
              Controller: passwordContoller,
              isobsecureText: true,
            ),

            MainButton(text: 'Sign up', ontap: () {
              //Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigationBar()));
            },)


          ],
        ),
      ),
    ));
  }
}


