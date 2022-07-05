import 'package:flutter/material.dart';

class LineItem extends StatelessWidget {
  const LineItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300
      ),
      width: MediaQuery.of(context).size.width * .4,
      height:1 ,
    );
  }
}
