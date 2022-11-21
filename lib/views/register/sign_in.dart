import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/button_sign_in.dart';

import 'package:mehealthy/views/register/widgetSign/footer.dart';
import 'package:mehealthy/views/register/widgetSign/header.dart';
import 'package:mehealthy/views/register/widgetSign/password.dart';

import 'widgetSign/email.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              name: "Sign In ",
              desc: "Sign In To Continue",
            ),
            IdentityInput(
              name: "Email",
              address: "Your Email Address",
            ),
            PasswordInput(),
            ButtonSignIn(name: "Sign In"),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-up');
              },
              child:
                  Footer(account: "Don\t have an account ?", entry: " Sign Up"),
            )
          ],
        ),
      )),
    );
  }
}
