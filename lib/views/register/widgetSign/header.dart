import 'package:flutter/material.dart';

import '../../../theme.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.name,
    required this.desc,
  });

  final String name;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,
              style: SecondaryTextStyle.copyWith(
                  fontSize: 24, fontWeight: semibold, color: Colors.black)),
          const SizedBox(
            height: 5,
          ),
          Text(desc,
              style: SecondaryTextStyle.copyWith(
                color: Colors.black,
              )),
        ],
      ),
    );
  }
}
