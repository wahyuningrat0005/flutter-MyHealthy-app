import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/profilPages/widgetprofile/menu_item_profile.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

Widget contentProfile() {
  return Expanded(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      decoration: BoxDecoration(
        color: ColorLib.choco,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Account",
            style: primaryTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          menuItem('Edit Profile'),
          menuItem('Your Order'),
          menuItem('Help'),
          SizedBox(
            height: 30,
          ),
          Text(
            "General",
            style: primaryTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          menuItem('Privacy & Policy'),
          menuItem('Team Of Services'),
          menuItem('Rote App'),
        ],
      ),
    ),
  );
}
