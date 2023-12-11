import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String tittle;
  final String content;
  final String desc;
  final String? imagepath;
  const MyCard({super.key, required this.tittle, required this.content, this.imagepath, required this.desc, });

  @override
  Widget build(BuildContext context) {
    return Container(

       width: 175,
    height: 255,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(imagepath!=null)
          Padding(
            padding: const EdgeInsets.only(left:10.0,bottom:5),
            child: Image.asset(imagepath!,
              height:175 ,
              width:178,
              fit: BoxFit.cover,

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:10.0,bottom:5),
            child: Text(tittle,style:TextStyle(

                fontFamily: 'Montserrat',
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,bottom:5),
            child: Text(content,style:TextStyle(

            fontFamily: 'Montserrat',
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
                letterSpacing:-0.408,

            )),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,bottom:5),
            child: Text(desc,style:TextStyle(

              fontFamily: 'Montserrat',
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              letterSpacing:-0.408,

            )),
          ),

        ],
      ),
    );
  }
}
