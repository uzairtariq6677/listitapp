import 'package:lisit_mobile_app/Widget/MainButton.dart';
import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Semibold/H3semibold.dart';

import '../../const/Theme/TextTheme/TextWidget/Bold/H2Bold.dart';
import '../../const/lib_all.dart';

class SpamScreen extends StatefulWidget {
  SpamScreen({super.key});

  @override
  State<SpamScreen> createState() => _SpamScreenState();
}

class _SpamScreenState extends State<SpamScreen> {
  int _value = 0;
  TextEditingController reportController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20.h,
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Icon Arrow Backward
                SizedBox(
                    height: 24.h,
                    width: 24.w,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios_new_outlined))),
                // Text Widget
                H2Bold(text: 'Report this listing'),
                SizedBox.shrink(),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
        
            Center(
              child: Container(
                width: 357.w,
                height: 483.h,
        
        
        
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H3semibold(
                      text: 'What king of spam is it?',Align: TextAlign.start,),
                    SizedBox(height:25),
                    Container(
                      height:229.h,width: 357.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 1,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(child: H3semibold(text: 'It is against the List IT Terms'))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 2,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(
                                child: H3semibold(
                                    text: 'Web links in description is not allowed',),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 3,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(child: H3semibold(text: 'Image(s) violates terms of List IT'))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 4,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(child: H3semibold(text: 'The Price seems to be inaccuarate'))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 5,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(child: H3semibold(text: 'Its contents are offensive'))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 19.h,
                                width: 19.w,
                                child: Radio(
                                    value: 6,
                                    groupValue: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    }),
                              ),
                              SizedBox(width:12),
                              SizedBox(child: H3semibold(text: 'Other'))
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    H3Regular(
        
                      text: 'Please tell us why you believe this is spam',color: Color(0XFFA6A6A6),
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(bottom:2.0),
                      child: Container(
                        height: 120.h,
                        width: 356.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                          border: Border.all(
                            color: Color(0XFFA6A6A6),
                            width: 0.5.w,
                          ),
                        ),
                        child: TextField(
                        controller: reportController,
                          keyboardType: TextInputType.multiline,
                          maxLines: 15,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(2.r),
                                borderSide: BorderSide(
                                  color: Color(0XFFA6A6A6),
                                  width: 0.5.w,
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.r),
                              borderSide: BorderSide(
                                color: Color(0XFFA6A6A6),
                                width: 0.5.w,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
        
                    Center(
                      child: H3Regular(
                          text: 'You have to choose to report this as spam',color: Color(0XFFA6A6A6),),
                    )
                  ],
                ),
        
              ),
            ),
        
            Center(
              child: SizedBox(
                width: 333.w,
                  child: MainButton(fillColor:kredbuttonColor,text: 'Submit Report', ontap: () {  },isfilled: false,)),
            )
          ]
          ),
        ),
      ),
    ));
  }
}
