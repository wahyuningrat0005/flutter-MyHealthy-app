import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class InformationBanner extends StatelessWidget {
  const InformationBanner(
      {super.key,
      required this.name,
      required this.desc,
      required this.imgurl,
      required this.color,
      required this.imgIcon});

  final String name;
  final String desc;
  final String imgurl;
  final String imgIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 325,
          height: 157,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          margin: EdgeInsets.only(top: 10),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: SecondaryTextStyle.copyWith(
                    fontWeight: semibold,
                    fontSize: 20,
                    color: ColorLib.itemTextColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      desc,
                      style: SecondaryTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 15,
                        color: ColorLib.itemTextColor,
                      ),
                    ),
                    Image.asset(imgurl),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      name,
                      style: SecondaryTextStyle.copyWith(
                          fontWeight: bold, fontSize: 20, color: ColorLib.pink),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(imgIcon),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
