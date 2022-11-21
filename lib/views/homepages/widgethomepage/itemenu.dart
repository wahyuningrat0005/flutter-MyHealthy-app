import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu(
      {super.key,
      required this.name,
      required this.color,
      required this.imgurl});

  final String name;
  final Color color;
  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 12),
          width: 70,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Image.asset(
            imgurl,
            width: 20,
            height: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(name,
            style: SecondaryTextStyle.copyWith(
                color: Colors.black, fontWeight: medium)),
      ],
    );
  }
}
