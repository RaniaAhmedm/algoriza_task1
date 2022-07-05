import 'package:flutter/material.dart';

class ItemBtn extends StatefulWidget {
  final double borderRadiusBtn;
  final Widget childBtn;
  final Color colorBtn;
  final Function onClick;
  const ItemBtn(
      {Key? key,
      required this.childBtn,
      required this.colorBtn,
      required this.borderRadiusBtn,
      required this.onClick})
      : super(key: key);

  @override
  State<ItemBtn> createState() => _ItemBtnState();
}

class _ItemBtnState extends State<ItemBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            widget.onClick();
          },
          child: widget.childBtn,
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(widget.colorBtn),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widget.borderRadiusBtn),
              ),
            ),
          ),
        )
      ],
    );
  }
}
