import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.all(14),
        child: Image.asset(
          'assets/icons/Hamburger.png',
          width: 18.0,
          height: 24.0,
          fit: BoxFit.fill,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(14),
          child: Icon(
            Icons.search,
            size: 24,
            color: Colors.black,
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}
