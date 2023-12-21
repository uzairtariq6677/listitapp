import 'package:lisit_mobile_app/const/Theme/TextTheme/TextWidget/Regular/H2regular.dart';

import '../../const/lib_all.dart';

class Privacypolicy extends StatelessWidget {
  const Privacypolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Scrollbar(
          thickness: 10,
          thumbVisibility: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 9.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:18.0),
                  child: Container(
                    height: 50.h,
                    width: 1.sw,
                    decoration: BoxDecoration(),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(height: 24.h, child: Icon(Icons.arrow_back_ios)),
                          SizedBox(
                              height: 24.h,

                              child: H3Regular(
                                  text: 'Privacy Policy',
                                  color: ksecondaryColor2)),
                          SizedBox(),
                        ]),
                  ),
                ),
                Divider(),

                Padding(
                  padding: const EdgeInsets.only(bottom:9.0,),
                  child: H2semiBold(
                    text: 'WELCOME TO LIST IT',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:23.0,left:18,right:18),
                  child: H2semiBold(
                    text:
                    'PLEASE READ THIS IMPORTANT LEGAL INFORMATION THAT GOVERNS YOUR  USE OF THE LISTIT.COM WEBSITE AND THE SERVICES.',
                    maxline: 4,align:TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,right: 18.0,bottom: 10),
                  child: H2Regular(maxline: 50,
                    text: 'Accumsan urna, posuere non viverra varius fringilla urna enim. Etiam congue faucibus arcu mauris risus massa nisi. Amet, imperdiet risus adipiscing est ullamcorper sit amet, vitae arcu. Quis consectetur ut urna, at sem rhoncus, scelerisque vitae. Semper amet neque enim diam. Risus sed nisl tincidunt morbi commodo ut tortor ornare integer. Arcu dolor, eget tellus, quis arcu tellus risus molestie. Felis ornare turpis ut nullam. Fames ac urna, ac felis. Vel eget dui arcu, netus ullamcorper massa massa non. Scelerisque posuere eget sit placerat sed libero non feugiat felis.Accumsan urna, posuere non viverra varius fringilla urna enim. Etiam congue faucibus arcu mauris risus massa nisi. Amet, imperdiet risus adipiscing est ullamcorper sit amet, vitae arcu. Quis consectetur ut urna, at sem rhoncus, scelerisque vitae. Semper amet neque enim diam. Risus sed nisl tincidunt morbi commodo ut tortor ornare integer. Arcu dolor, eget tellus, quis arcu tellus risus molestie. Felis ornare turpis ut nullam. Fames ac urna, ac felis. Vel eget dui arcu, netus ullamcorper massa massa non. Scelerisque posuere eget sit placerat sed libero non feugiat felis.',),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
