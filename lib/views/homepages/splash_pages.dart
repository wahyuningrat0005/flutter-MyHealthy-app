import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehealthy/theme.dart';

import 'package:mehealthy/views/register/sign_in.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), (() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => SignIn()),
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "MeHealty",
              style: GoogleFonts.poppins(
                textStyle: primaryTextStyle,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
