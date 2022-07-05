import 'package:algoriza_task1/Features/Sign_page/SignIn_Page.dart';
import 'package:algoriza_task1/Features/register_page/Register_Page.dart';
import 'package:algoriza_task1/Utils/container_widget.dart';
import 'package:algoriza_task1/Utils/item-text.dart';
import 'package:algoriza_task1/Utils/item_btn.dart';
import 'package:algoriza_task1/Utils/my-skip-btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeliveryPage extends StatefulWidget {
  static const String routeName = 'Delivery Page';
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * .05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const MySkipBtn(),
                Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .2),
                    child: Image.asset('assets/images/7.png')),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .05),
                      width: double.infinity,
                      child: Image.asset(
                          'assets/images/sammy-bicycle-courier-delivering-food.png')),
                ),
                Column(
                  children: [
                    TextItem(
                        textItem: 'Get food delivery to your',
                        textSize: 25,
                        textColor: Colors.black,
                        textFontWeight: FontWeight.bold),
                    TextItem(
                        textItem: 'doorstep asap',
                        textSize: 25,
                        textColor: Colors.black,
                        textFontWeight: FontWeight.bold),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    TextItem(
                        textItem: 'We have young and professional delivery',
                        textSize: 16,
                        textColor: Colors.black87.withOpacity(0.6),
                        textFontWeight: FontWeight.w400),
                    TextItem(
                        textItem: ' team that will bring your food as soon as',
                        textSize: 16,
                        textColor: Colors.black87.withOpacity(0.6),
                        textFontWeight: FontWeight.w400),
                    TextItem(
                        textItem: ' possible to your doorstep',
                        textSize: 16,
                        textColor: Colors.black87.withOpacity(0.6),
                        textFontWeight: FontWeight.w400),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ContainerWidget(containerColor: Colors.red.shade300),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .01,
                    ),
                    ContainerWidget(containerColor: Colors.grey),

                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ItemBtn(
                        childBtn: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                              MediaQuery.of(context).size.width * .3,
                          vertical:MediaQuery.of(context).size.width * .04 ),
                          child: const Text('Get Started'),
                        ),
                        onClick: (){
                          Navigator.pushNamed(context, SignInPage.routeName);
                        },
                        colorBtn: Colors.teal,
                        borderRadiusBtn: 6),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextItem(
                            textItem: "Don't have an account? ",
                            textSize: 16,
                            textColor: Colors.black87,
                            textFontWeight: FontWeight.w600),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, RegisterPage.routeName);
                          },
                          child: TextItem(
                              textItem: "Sign Up",
                              textSize: 18,
                              textColor: Colors.teal,
                              textFontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
      ),
    );
  }
}
