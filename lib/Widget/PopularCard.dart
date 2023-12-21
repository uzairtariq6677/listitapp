import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Regular/Pararegular.dart';

import '../const/Theme/TextTheme/TextWidget/Semibold/H3semibold.dart';
import '../const/lib_all.dart';

class PopularCard extends StatelessWidget {
  String image;
  String title;
  String price;
  String DistanceTravelled;
  bool isDistanceTravelRequired;
 PopularCard({
    required this.DistanceTravelled,required this.image,required this.price,required this.title,

   required this.isDistanceTravelRequired, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:251.h,
      width: 175.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            height: 178.h,
            width:175.w,
            child: Image.asset(image,fit: BoxFit.contain,),
          ),
          H3semibold(text: title),
          Pararegular(text: price),
         if(isDistanceTravelRequired) Pararegular(text:DistanceTravelled),

        ],
      ),

    );
  }
}