import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatelogfavModel{
  static final items=[
    Item(
        image:'assets/images/Rectangle 13 (2).png',
        price: 'AED 80,000',
        description: 'AED6077/month| 2023 Audi e-Tron 95kWh | Full Audi Service | GCC Specifications | Ref#75362',
       content: 'Brand New Audi e-tron' ,
        detail: 'details',
         battery: '- Battery: Permanent magnet/synchronous....',
       address :'Dubai Marina, Dubai, UAE'
    ),
    Item(
        image:'assets/images/Rectangle 13 (1).png',
        price: 'AED 80,000',
        description: 'AED6077/month| 2023 Audi e-Tron 95kWh | Full Audi Service | GCC Specifications | Ref#75362',
        content: 'Brand New Audi e-tron' ,
        detail: 'details',
        battery: '- Battery: Permanent magnet/synchronous....',
        address :'Dubai Marina, Dubai, UAE'
    ),
    Item(
        image:'assets/images/Rectangle 13 (2).png',
        price: 'AED 80,000',
        description: 'AED6077/month| 2023 Audi e-Tron 95kWh | Full Audi Service | GCC Specifications | Ref#75362',
        content: 'Brand New Audi e-tron' ,
        detail: 'details',
        battery: '- Battery: Permanent magnet/synchronous....',
        address :'Dubai Marina, Dubai, UAE'
    ),



  ];

}




class Item {
  final String image;
  final String price;
  final String description;
  final String content;
  final String detail;
  final String battery;

  final String address;



  Item(
      {required this.image, required this.description, required this.price, required this.content,
      required this.detail,required this.battery,required this.address,
      });
}




Widget buildCard(Item item) {

  return Padding(
    padding: const EdgeInsets.only(bottom:10.0,left:5),
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.only(bottom:10.0,top:5),
            child: Image.asset(
              item.image,
             height:178,
              width:366,
              // Set the desired height
              // Set the desired width
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 2.0), // Add some space between image and text
          Padding(
            padding: const EdgeInsets.only(left:15.0,bottom: 5),
            child: Text(item.price,
              style:
              TextStyle(
               color: Color(0xFFED3F3F),
                fontWeight: FontWeight.w500,
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontStyle: FontStyle.normal,
              ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,bottom: 5),
            child: Text(item.description,style:
            TextStyle(
              color: Color(0xFF000000),
                  fontWeight: FontWeight.w500,
              fontFamily: ' Montserrat',
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,bottom: 5),
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
          Padding(
            padding: const EdgeInsets.only(left:15.0,bottom: 5),
            child: Text(item.detail,
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
            padding: const EdgeInsets.only(left:15.0,bottom: 5),
            child: Text(item.battery,
              style:
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

          Padding(
            padding: const EdgeInsets.only(bottom:15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Icon(Icons.location_on_outlined,
                      size: 17,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Text(item.address,
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
                Spacer(),
                GestureDetector(
                  onTap: (){
                  print('delete icon');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(Icons.delete,size: 24,color: Color(0xFF00CCFF),),
                  ),

                ),

              ],
            ),
          ),


        ],
      ),
    ),
  );
}
