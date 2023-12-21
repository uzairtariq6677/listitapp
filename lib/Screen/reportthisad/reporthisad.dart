import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Bold/H2Bold.dart';
import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Semibold/H3semibold.dart';

import '../../const/lib_all.dart';
import '../SpamScreen/SpamScreen.dart';
import 'Widget/reportthisaddtext.dart';

class reportthisad extends StatefulWidget {
  const reportthisad({super.key});

  @override
  State<reportthisad> createState() => _reportthisadState();
}

class _reportthisadState extends State<reportthisad> {

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(

      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(
                   height: 24.h,
                     width: 24.w,
                     child: Icon(Icons.arrow_back_ios_new_outlined)),
                  H2Bold(text: 'Report this listing'),
                  SizedBox.shrink(),
                ],
              ),
          SizedBox(height:10),
              Center(
                child: Container(
                  alignment: Alignment.center,
                    width:325.w,child: H3semibold( text: '2023 Audi e-Tron 95kWh | Full  Audi Service |GCC Specifications | Ref#75362',)),
              ),
          SizedBox(height:50.h),
          Column(
            children: [
              Reportthisad(text: 'Spam', ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SpamScreen()));
              },),

              Reportthisad(text: 'Fraud ', ontap: () {}),

              Reportthisad(text: 'Miscategorized', ontap: () {  },),

              Reportthisad(text: 'Copyright Infringement', ontap: () {  },),

              Reportthisad(text: 'Not Available', ontap: () {  },),

              Reportthisad(text: 'Copyright Infringement', ontap: () {  },),

              Reportthisad(text: 'Incorrect Pricing', ontap: () {  },),
            ],
          )


          
          
          
          
          
          
            ],
          
          ),
        ),
      )
    ));
  }
}


