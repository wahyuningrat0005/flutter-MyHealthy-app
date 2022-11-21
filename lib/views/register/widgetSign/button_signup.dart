import 'package:flutter/material.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/sign-in');
      },
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered))
              return ColorLib.grey; //<-- SEE HERE
            return null; // Defer to the widget's default.
          },
        ),
      ),
      child: const Text(
        'Sign In',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
