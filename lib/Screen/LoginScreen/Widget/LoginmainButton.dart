

import '../../../const/lib_all.dart';

class Loginmainbutton extends StatelessWidget {
  String text;
  String image;
  Function() onTap;

  Loginmainbutton({
    required this.image,
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom:21.0),
        child: Container(
            height: 60.h,
            width: 374.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: ksecondaryColor,
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:27.0),
                  child: SizedBox(
                      height: 30.h,
                      width: 30.w,
                      child: Image.asset(image,fit: BoxFit.contain,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: H2semiBold(text: text,color:ksecondaryColor,),
                )
              ],
            )),
      ),
    );
  }
}