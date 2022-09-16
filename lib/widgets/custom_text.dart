import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final Color color;
  double? fontSize;
  final FontWeight fontWeight;

   CustomText(this.text,
      {Key? key,
        this.color = Colors.white,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,this.fontFamily}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color,fontFamily:fontFamily ),
    );
  }
}
