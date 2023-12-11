import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatelogModel{
 static final items=[
  Item(
        image:'assets/images/Rectangle 13 (1).png',
        description: 'Audi e-tron Premium',
        price: 'Rs. 54,77,823.73', content: '2014 . 239,000 km'
    ),
   Item(
       image:'assets/images/Rectangle 13 (1).png',
       description: 'Audi e-tron Premium',
       price: 'Rs. 54,77,823.73', content: '2014 . 239,000 km'
   ),Item(
       image:'assets/images/Rectangle 13 (1).png',
       description: 'Audi e-tron Premium',
       price: 'Rs. 54,77,823.73', content: '2014 . 239,000 km'
   ),
   Item(
       image:'assets/images/Rectangle 13 (1).png',
       description: 'Audi e-tron Premium',
       price: 'Rs. 54,77,823.73', content: '2014 . 239,000 km'
   ),

  ];

}




class Item{
   final String image;
 final String description;
  final String price;
final  String content;
  Item({required this.image ,required this.description,required this.price,required this.content,} );
}


Widget buildCard(Item item) {

  return Container(

    margin: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          item.image,
          height: 170,
          width:175, // Set the desired height
       // Set the desired width
          fit: BoxFit.cover,
        ),
        SizedBox(height: 2.0), // Add some space between image and text
        Padding(
          padding: const EdgeInsets.only(bottom:5.0),
          child: Text(item.description,style:
          TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w500,
            fontFamily: ' Montserrat',
            fontSize: 14,
            fontStyle: FontStyle.normal,

          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:5.0),
          child: Text(item.price,
            style:
            TextStyle(
              color: Color(0xFF040415).withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontFamily: ' Montserrat',
              fontSize: 12,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.408,
            ),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:5.0),
          child: Text(item.content,style:
          TextStyle(
            color: Color(0xFF040415).withOpacity(0.5),
            fontWeight: FontWeight.w500,
            fontFamily: ' Montserrat',
            fontSize: 12,
            fontStyle: FontStyle.normal,
            letterSpacing: -0.408,
          ),
          ),
        ),
      ],
    ),
  );
}
