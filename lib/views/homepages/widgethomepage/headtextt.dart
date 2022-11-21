import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class HeadText extends StatelessWidget {
  const HeadText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Welcome Back\,",
                  style: primaryTextStyle.copyWith(fontSize: 20)),
              Text("Wela",
                  style: primaryTextStyle.copyWith(
                      fontWeight: bold, fontSize: 20)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Pilihan Topik",
            style: SecondaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 17,
              color: ColorLib.itemTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
