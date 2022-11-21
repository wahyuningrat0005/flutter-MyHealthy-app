import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: SecondaryTextStyle.copyWith(
              color: Colors.black,
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    style: SecondaryTextStyle.copyWith(color: Colors.black),
                    decoration: InputDecoration.collapsed(
                        hintText: "Your Password",
                        hintStyle:
                            SecondaryTextStyle.copyWith(color: Colors.black)),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
