import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/button_signup.dart';
import 'package:mehealthy/views/register/widgetSign/email.dart';
import 'package:mehealthy/views/register/widgetSign/footer.dart';
import 'package:mehealthy/views/register/widgetSign/header.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                name: "Sign Up",
                desc: "Register",
              ),
              IdentityInput(
                name: "Full Name",
                address: "Your Full Name",
              ),
              IdentityInput(name: "Username", address: "Your Username"),
              IdentityInput(name: "Email", address: "Your Email Addres"),
              IdentityInput(name: "Password", address: "Your Password"),
              ButtonSignUp(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign-in');
                },
                child: Footer(
                    account: 'Already have an account ? ', entry: " Sign In"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
