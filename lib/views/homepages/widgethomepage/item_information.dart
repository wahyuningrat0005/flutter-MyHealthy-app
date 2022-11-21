import 'package:flutter/material.dart';
import 'package:mehealthy/views/homepages/widgethomepage/inforamtion.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

import '../../../theme.dart';

class InforamtionCard extends StatelessWidget {
  const InforamtionCard({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headt() {
      return Text(
        "Today’s Task",
        style: SecondaryTextStyle.copyWith(
          fontWeight: semibold,
          fontSize: 20,
          color: ColorLib.itemTextColor,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headt(),
          SizedBox(
            height: 20,
          ),
          InformationBanner(
            name: "Peer Group Meetup",
            desc:
                'Let’s open up to the  thing that \nmatters amoung the people ',
            imgurl: 'assets/icons/meetup.png',
            color: ColorLib.choco,
            imgIcon: 'assets/icons/Group.png',
          ),
          InformationBanner(
            name: "Peer Group Meetup",
            desc:
                'Let’s open up to the  thing that \nmatters amoung the people ',
            imgurl: 'assets/icons/meetup.png',
            color: ColorLib.hijaugrey,
            imgIcon: 'assets/icons/Group.png',
          ),
          InformationBanner(
            name: "Peer Group Meetup",
            desc:
                'Let’s open up to the  thing that \nmatters amoung the people ',
            imgurl: 'assets/icons/meetup.png',
            color: ColorLib.bluegrey,
            imgIcon: 'assets/icons/Group.png',
          ),
        ],
      ),
    );
  }
}
