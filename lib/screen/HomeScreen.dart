import 'package:flutter/material.dart';
import 'package:listitapp/Model/PopularCatalog.dart';
import 'package:listitapp/constant.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                 children: [
                   Container(
                     height:74,
                     width:318,

                     
                     child: const Padding(
                       padding: EdgeInsets.only(left:5.0),
                       child: TextField(


                         decoration: InputDecoration(
                           fillColor: Color(0xFFEDEEEF),
                           filled:true,
                           border: OutlineInputBorder(),
                             prefixIcon: Padding(
                             padding: EdgeInsets.only(left:5),
                             child: Icon(Icons.search),
                           ),

                           hintText: 'Search for Motors',

                         ),

                       ),
                     ),
                     
                   ),
                   const Padding(
                     padding: EdgeInsets.only(left:5.0),
                     child: Icon(Icons.notifications),
                   )
                 ],

                ),


                Container(
                  height: 130,
                  width: 369,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 89,
                          color: KPrimaryColor2,
                          child: Image.asset(
                            'assets/images/badge-check.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                               padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text("verify your Mobile Number",
                                    style:TextStyle(
                                    color: Color(0xFF040415),
                                    fontWeight: FontWeight.w500,
                                    fontFamily: ' Montserrat',
                                    fontSize: 14,
                                    fontStyle: FontStyle.normal,

                                  ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Verify your number before posting an ad",
                                    style: TextStyle(
                                      color:Color(0xFF040415),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(Icons.arrow_forward_outlined),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text('Get Started',
                               style: TextStyle(
                                    color:Color(0xFF00CCFF),
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 55,
                  width: 369,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 89,
                          color: KPrimaryColor2,
                          child: Image.asset(
                            'assets/images/badge-check.png',
                            height: 24,
                            width: 24,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(

                                children: [
                                  Text("You recently looked at",
                                    style: TextStyle(
                                    color:Color(0xFF040415),
                                    fontFamily: 'Montserrat',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  Padding(
                                    padding: EdgeInsets.only(left: 100),
                                    child: Icon(Icons.arrow_forward_outlined),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Motor > Cars",
                                    style: TextStyle(
                                      color:Color(0xFF040415),
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:2),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0,top:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular in Cars',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.arrow_forward_outlined),
                      ),
                    ],
                  ),
                ),
               Container(
                 height: 260,
                 child:ListView.builder(
                   scrollDirection: Axis.horizontal,
                itemCount: CatelogModel.items.length,
                                     itemBuilder: (BuildContext context, int index) {
                                       return buildCard(
                                           CatelogModel.items[index]);
                                     },
                 ),
    ),

                const Padding(
                  padding: EdgeInsets.only(left: 5.0,top:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saved Searches in Motors',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(Icons.arrow_forward_outlined),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 260,
                  child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: CatelogModel.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildCard(
                          CatelogModel.items[index]);
                    },
                  ),
                ),
               ],
            ),
          ),
        ),
      ),
    );

  }
}