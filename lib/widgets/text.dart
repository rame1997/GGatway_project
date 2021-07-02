import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String title;
  final String fontfamily;
  final FontWeight fontweight;
  final double size;
  final Color color;
  final TextAlign? align;

  TextCustom( this.title, this.fontfamily,  this.fontweight,this.size,this.color,this.align);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: align,
      style: TextStyle(
          fontFamily: fontfamily, fontWeight: fontweight,fontSize: size,color: color),
    );
  }
}
