import 'package:flutter/material.dart';
import 'package:traverse/src/pages/login_page.dart';
import 'package:traverse/src/pages/signup_page.dart';
import 'package:traverse/src/pages/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(132, 59, 114, 1)
      ),
      home: SignupPage(),
    );
  }
}
