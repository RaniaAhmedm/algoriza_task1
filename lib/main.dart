import 'package:algoriza_task1/Features/Deliveries_page/delivery_page.dart';
import 'package:algoriza_task1/Features/Home/home_page.dart';
import 'package:algoriza_task1/Features/Sign_page/SignIn_Page.dart';
import 'package:algoriza_task1/Features/register_page/Register_Page.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Algoriza Task1',
      routes: {
        HomePage.routeName:(context)=>const HomePage(),
        DeliveryPage.routeName:(context)=>const DeliveryPage(),
        SignInPage.routeName:(context)=>const SignInPage(),
        RegisterPage.routeName:(context)=>const RegisterPage(),
      },
      initialRoute:HomePage.routeName ,
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      localizationsDelegates: const [
        CountryLocalizations.delegate
      ],
    );
  }
}

