import 'package:flutter/material.dart';
import 'package:mehealthy/views/homepages/widgethomepage/itemenu.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class HappyWidget extends StatelessWidget {
  const HappyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ItemMenu(
                imgurl: "assets/icons/study.png",
                name: "Pendidikan",
                color: ColorLib.pink),
            ItemMenu(
                imgurl: "assets/icons/asmara.png",
                name: "Asmara",
                color: ColorLib.bluegrey),
            ItemMenu(
                imgurl: "assets/icons/carrier.png",
                name: "Karier",
                color: ColorLib.star),
            ItemMenu(
                imgurl: "assets/icons/healthy.png",
                name: "Kesehatan",
                color: ColorLib.hijaugrey),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            ItemMenu(
                imgurl: "assets/icons/family.png",
                name: "Keluarga",
                color: ColorLib.pink),
            ItemMenu(
                imgurl: "assets/icons/social.png",
                name: "Sosial",
                color: ColorLib.bluegrey),
            ItemMenu(
                imgurl: "assets/icons/person1.png",
                name: "Pribadi",
                color: ColorLib.star),
            ItemMenu(
                imgurl: "assets/icons/study.png",
                name: "Trauma",
                color: ColorLib.hijaugrey),
          ],
        ),
      ],
    );
  }
}
