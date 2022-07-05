import 'package:flutter/material.dart';
class TextItem extends StatelessWidget {
  String textItem;
  Color textColor;
  FontWeight textFontWeight;
  double textSize;
  TextItem(
      {Key? key, required this.textItem,
        required this.textSize,
        required this.textColor,
        required this.textFontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textItem,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: textColor,
        fontWeight: textFontWeight,
        fontSize: textSize,
      ),
    );
  }
}
