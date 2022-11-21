import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

import 'package:mehealthy/views/register/sign_up.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
    required this.account,
    required this.entry,
  });

  final String account;
  final String entry;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            account,
            style: SecondaryTextStyle.copyWith(
              color: Colors.black,
              fontWeight: bold,
            ),
          ),
          Text(
            entry,
            style: SecondaryTextStyle.copyWith(
              color: Colors.blue,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
