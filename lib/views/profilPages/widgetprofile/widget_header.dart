import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

Widget header() {
  return AppBar(
    backgroundColor: background1,
    automaticallyImplyLeading: false,
    elevation: 0,
    flexibleSpace: SafeArea(
      child: Container(
        padding: EdgeInsets.all(defaultMargin),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                'assets/icons/person1.png',
                width: 64,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "hallo wella",
                    style: primaryTextStyle.copyWith(
                      fontWeight: semibold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Wella",
                    style: SecondaryTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.exit_to_app,
                size: 20,
              ),
            )
          ],
        ),
      ),
    ),
  );
}
