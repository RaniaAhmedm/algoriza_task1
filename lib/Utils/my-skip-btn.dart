import 'package:algoriza_task1/Features/Sign_page/SignIn_Page.dart';
import 'package:flutter/material.dart';

class MySkipBtn extends StatefulWidget {
  const MySkipBtn({Key? key}) : super(key: key);

  @override
  State<MySkipBtn> createState() => _MySkipBtnState();
}

class _MySkipBtnState extends State<MySkipBtn> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SignInPage.routeName);
          },
          child:const Text(
          'Skip',
          style: TextStyle(
    color: Colors.black, fontWeight: FontWeight.w500),
    ),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.pink.shade100.withOpacity(0.3),),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        )
      ],
    );
  }
}
