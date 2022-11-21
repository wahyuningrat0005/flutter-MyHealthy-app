import 'package:flutter/material.dart';
import 'package:mehealthy/views/profilPages/widgetprofile/menu_item_profile.dart';
import 'package:mehealthy/views/profilPages/widgetprofile/widget_content_profile.dart';
import 'package:mehealthy/views/profilPages/widgetprofile/widget_header.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        contentProfile(),
      ],
    );
  }
}
