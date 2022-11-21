import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class ButtonSignIn extends StatelessWidget {
  const ButtonSignIn({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/home');
        },
        style: TextButton.styleFrom(
            backgroundColor: ColorLib.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          name,
          style: SecondaryTextStyle,
        ),
      ),
    );
  }
}
