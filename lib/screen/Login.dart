import 'package:flutter/material.dart';
import 'package:listitapp/constant.dart';
import 'package:listitapp/screen/Signup.dart';
import 'package:listitapp/widget/normalText1.dart';
import 'package:listitapp/widget/squarebutton.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      child: Padding(
                        padding: const EdgeInsets.only(top: 33),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, bottom: 8.0),
                              child: Image.asset(
                                'assets/images/image 44.png',
                                  width: 73,
                                  height: 45,
                              ),
                            ),
                            Icon(Icons.clear,size: 14,),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 307.921,
                    height: 243.993,
                      child: Image.asset(
                        'assets/images/Group 317.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 8),
                      child: NormalText1(
                        text: 'Login',
                        color: KSecondaryColor1,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ),
                  Container(
                    height:60,
                   width: 374,
                    child: Padding(
                      padding:  const EdgeInsets.only(bottom: 10,
                          left:10,right: 10,top:10,),
                      child: CustomButton(

                        text: 'Continue with Facebook',
                        imagepath: ('assets/images/image 19.png'),
                        textSize: 20,
                        textColor: Colors.black87,
                        onpressed: () {  },
                        hasbackgroundcolor: false,
                      ),

                    ),
                  ),
                  Container(
                    height:60,
                    width: 374,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15,
                        left:10,right: 10,),
                      child: CustomButton(
                        onpressed: () {},
                        text: 'Continue with Google',
                        imagepath: ('assets/images/image 20.png'), textSize: 20,
                        hasbackgroundcolor: false,
                      ),

                    ),
                  ),
                  Container(
                    height:60,
                    width: 374,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15,
                        left:10,right: 10,),
                      child: CustomButton(
                        onpressed: () {},
                        text: 'Continue with Apple',
                        imagepath: ('assets/images/image 21.png'), textSize: 20,
                        hasbackgroundcolor: false,
                      ),
                    ),
                  ),
                  Container(
                    height:60,
                    width: 374,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15,
                      left:10,right: 10,),
                      child: CustomButton(
                        onpressed: () {},
                        text: 'Continue with Email',
                        imagepath: ('assets/images/image 51.png'), textSize: 20,
                        hasbackgroundcolor: false,
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom:15,top:15),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAccount(),
                            ),
                          );
                        },
                        child: Container(
                            child: Text('Don’t have an account? Create account')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    ),

      );

  }
}
