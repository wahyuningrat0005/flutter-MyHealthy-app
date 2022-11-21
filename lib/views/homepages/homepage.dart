import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/homepages/widgethomepage/happy.dart';
import 'package:mehealthy/views/homepages/widgethomepage/headtextt.dart';

import 'package:mehealthy/views/homepages/widgethomepage/item_information.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

import 'widgethomepage/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          kToolbarHeight,
        ),
        child: AppBarWidget(),
      ),
      body: ListView(
        children: const [
          HeadText(),
          HappyWidget(),
          SizedBox(
            height: 20,
          ),
          InforamtionCard(),
        ],
      ),
    );
  }
}
