import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  Color containerColor;

ContainerWidget({Key? key, required this.containerColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * .02,
      height: 6,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color:containerColor),
    );
  }
}
