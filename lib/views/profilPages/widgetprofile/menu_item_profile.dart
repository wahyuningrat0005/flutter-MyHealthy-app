import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

Widget menuItem(String text) {
  return Container(
    margin: EdgeInsets.only(top: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: SecondaryTextStyle.copyWith(
              fontSize: 13, color: ColorLib.itemTextColor),
        ),
        Icon(
          Icons.chevron_right,
          color: ColorLib.blackText,
        ),
      ],
    ),
  );
}
