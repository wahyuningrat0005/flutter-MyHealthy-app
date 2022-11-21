import 'package:flutter/material.dart';
import 'package:mehealthy/views/homepages/mainpage.dart';
import 'package:mehealthy/views/homepages/splash_pages.dart';
import 'package:mehealthy/views/register/sign_in.dart';
import 'package:mehealthy/views/register/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
      },
    );
  }
}
