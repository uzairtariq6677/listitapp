import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Bold/H2Bold.dart';
import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Regular/Pararegular.dart';
import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Semibold/H3semibold.dart';

import '../../const/lib_all.dart';
import 'Widget/dialogforfavouritescreen.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea
      (child: Scaffold(
      body: Column(

        children:[
        SizedBox(height:22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_outlined),
              H2Bold(text: 'Favourite'),
              SizedBox(),
            ],
          ),
          Container(
            height: 372.h,
              width:374.w,
            decoration: BoxDecoration(
              color: kbackgrounColor,
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(

                  offset: Offset(0.5,1),
                  color: Colors.black12,
                  blurRadius: 4.sp,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height:178.h,
                  width:374.w,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                      color: kbackgrounColor,
                      boxShadow: [
                      BoxShadow(
                        offset: Offset(0,3),
                        blurRadius: 2.sp,
                        spreadRadius: -1.sp,
                      ),
                    ],
                  ),
child: Image.asset('assets/car7.png',fit: BoxFit.cover,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    H2semiBold(text: 'AED 80,000'),
                    Pararegular(text: '22 hours ago'),
                  ],
                ),
                H3semibold(text: 'AED6077/month| 2023 Audi e-Tron 95kWh | Full Audi Service | GCC Specifications | Ref#75362'),
              Pararegular(text: 'Brand New Audi e-tron'),
                Pararegular(text: 'Details:'),
                Pararegular(text: '- Battery: Permanent magnet/synchronous....'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Pararegular(text: 'Dubai Marina, Dubai, UAE'),
                  InkWell(
                    onTap: (){
                      showAdaptiveDialog(context: context, builder: (context){
                        return DialogforDeleteFavourite();
                      });
                    },
                    child: Icon(Icons.delete_rounded),
                  )
                    
                  ],
                )

              ],
            )
          ),
        ]
      ),

    ),
    );
  }
}
