import 'package:flutter/material.dart';
import 'package:mehealthy/theme.dart';
import 'package:mehealthy/views/artikelPages/main_artikel.dart';
import 'package:mehealthy/views/audioPages/main_audio.dart';
import 'package:mehealthy/views/homepages/homepage.dart';

import 'package:mehealthy/views/homepages/widgethomepage/happy.dart';
import 'package:mehealthy/views/homepages/widgethomepage/headtextt.dart';
import 'package:mehealthy/views/homepages/widgethomepage/itemenu.dart';
import 'package:mehealthy/views/profilPages/main_profil.dart';
import 'package:mehealthy/views/register/widgetSign/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    AudioPageMain(),
    ArtikelPage(),
    ProfilPage(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget customBottomBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          backgroundColor: ColorLib.blue,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,
                  size: 30,
                  color: currentIndex == 0 ? ColorLib.blackText : Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note,
                  size: 30,
                  color: currentIndex == 1 ? ColorLib.blackText : Colors.white),
              label: 'Audio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book,
                  size: 30,
                  color: currentIndex == 2 ? ColorLib.blackText : Colors.white),
              label: 'Progres',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,
                  size: 30,
                  color: currentIndex == 3 ? ColorLib.blackText : Colors.white),
              label: 'Profil',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: customBottomBar(),
      body: _widgetOptions.elementAt(currentIndex),
    );
  }
}
