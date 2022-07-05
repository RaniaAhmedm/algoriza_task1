import 'package:algoriza_task1/Utils/item_btn.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  static const String routeName = 'Register Page';
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.white,
        systemNavigationBarColor: Colors.white,
      ),
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/Deconstructed food-bro.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .15,
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome to Fashion Daily',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Register',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: const [
                                      Text(
                                        'Help',
                                        style: TextStyle(
                                            color: Colors.greenAccent),
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Icon(
                                        Icons.help,
                                        color: Colors.greenAccent,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }

                                return null;
                              },
                              controller: emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                hintText: 'Eg.example@email.com',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            const Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }

                                return null;
                              },
                              controller: phoneController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                hintText: '1118101402',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                                prefixIcon: CountryCodePicker(
                                  onChanged: (CountryCode countryCode) {},
                                  initialSelection: 'EG',
                                  showFlag: true,
                                  favorite: const ['+20', 'EG'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  alignLeft: false,
                                  showDropDownButton: true,
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            const Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              obscureText: obscureText,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }

                                return null;
                              },
                              controller: phoneController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  color: Colors.grey,
                                ),
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                  child: Icon(
                                    obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility_rounded,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            ItemBtn(
                                childBtn: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal:
                                          MediaQuery.of(context).size.width *
                                              .3,
                                      vertical:
                                          MediaQuery.of(context).size.width *
                                              .055),
                                  child: const Text('Get Started'),
                                ),
                                onClick: () {
                                  if (formKey.currentState!.validate()) {}
                                },
                                colorBtn: Colors.greenAccent,
                                borderRadiusBtn: 6),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 1.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Text(
                                  'Or',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 1.0,
                                    color: Colors.grey[400],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * .07,
                              child: OutlinedButton.icon(
                                onPressed: () {},
                                icon: Image.asset(
                                  'assets/images/g.png',
                                  width:
                                      MediaQuery.of(context).size.width * .065,
                                  height:
                                      MediaQuery.of(context).size.height * .02,
                                  fit: BoxFit.fill,
                                ),
                                label: const Text(
                                  'Sign in with google',
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don\'t have an account?',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.greenAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            const Text(
                              'Use the application according to the terms and conditions',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
