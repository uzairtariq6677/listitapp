 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonfield extends StatelessWidget {
  String labelText;
 String ? imagepath;



  buttonfield({
    super.key,
    required this.labelText,
    this.imagepath='',
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
          prefixIcon: imagepath!.isNotEmpty ? Image.asset(imagepath!,) : SizedBox() ,
          border: OutlineInputBorder(
            borderSide: BorderSide(
            ),
          ),
        ),

      ),

      ],
    );
  }
}
