
import '../../../const/Theme/TextTheme/TextWidget/Semibold/H3semibold.dart';
import '../../../const/lib_all.dart';

class Reportthisad extends StatelessWidget {
  String text;
  Color? color;
  Function() ontap;
  Reportthisad({
    required this.ontap,
    required this.text,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width:375.w,
        decoration:BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0XFFECECEc),
              width:1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 21.0,top:30),
          child: H3semibold(text:text),
        ),
          ),
    );
  }
}