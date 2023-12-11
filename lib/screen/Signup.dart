import 'package:flutter/material.dart';
import 'package:listitapp/constant.dart';
import 'package:listitapp/widget/inputfield.dart';
import 'package:listitapp/widget/normalText1.dart';
import 'package:listitapp/widget/squarebutton.dart';

import '../widget/Bottomnavigation.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.only( bottom: 10.0),
                  child: Image.asset(
                    'assets/images/image 44.png',
                    height:45,
                    width:73 ,
                  ),
                ),
                const Icon(Icons.clear, size:14,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              children: [
                NormalText1(
                  text: 'Sign UP',
                  color: KSecondaryColor1,
                  weight: FontWeight.w600,
                ),
              ],
            ),
          ),
                Padding(
          padding: const EdgeInsets.only(bottom:23.0),
          child: Column(
            children: [
              NormalText1(
                text: 'Find Your Dream Car',
                color: KSecondaryColor1,
                weight: FontWeight.w600,
              ),
            ],
          ),
                ),
          
              Container(
                height: 64,
                width:366,
                child: Padding(
                  padding: const EdgeInsets.only(left:8,right:8),
                  child: buttonfield(
                    labelText: 'Full name ',
                    imagepath: 'assets/icons/password.png',
                  ),
                ),
              ),
          const SizedBox(height: 20,),
          
          Container(
            height: 64,
            width:366,
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: buttonfield(
                labelText: 'Email address',
                imagepath: 'assets/icons/mail.png',
              ),
            ),
          ),
              const SizedBox(height: 20,),
           Container(   height: 64,
             width:366,
             child: Padding(
               padding: const EdgeInsets.only(left: 8,right: 8),
               child: buttonfield(
                 labelText: 'Password',
                 imagepath: 'assets/icons/Group.png',
               ),
             ),
           ),
              SizedBox(height: 40,),
          
          Container(   height: 64,
            width:366,
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: CustomButton(
                text: 'Sign Up',
                textStyle:  const TextStyle(
                color:KPrimaryColor1,
                  fontFamily: 'Lato',
                  fontSize: 16,
                  // Add other text style properties as needed
                ),
                onpressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>bottomnavigation()));
                }, textSize: 20, hasbackgroundcolor: true,
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


