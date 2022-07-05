import 'package:algoriza_task1/Features/Boarding_Page/boarding_page.dart';
import 'package:algoriza_task1/Features/Deliveries_page/delivery_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'Home Page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndexPage = 0;
  PageController pageView = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageView,
        onPageChanged: (pageIndex) {
          currentIndexPage = pageIndex;
          setState(() {});
        },
        children: const [
          DeliveryPage(),
          BoardingPage(),
        ],
      ),
    );
  }
}
