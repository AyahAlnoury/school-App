import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:school/pages/adverts.dart';
import 'package:school/pages/mainpage.dart';
import 'package:school/pages/video.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedPage = 1;
  final _pageOptions = [
    Video(),
    MyMainPage(),
    Adverts(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pageOptions.elementAt(_selectedPage),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 59, 130, 120),
          width: double.infinity,
          child: GNav(
              gap: 10,
              padding: EdgeInsets.all(20),
              selectedIndex: _selectedPage,
              onTabChange: (int index) {
                setState(() {
                  _selectedPage = index;
                });
              },
              color: Color.fromARGB(255, 152, 228, 220),
              tabs: [
                GButton(
                  icon: Icons.video_call,
                  textColor: Colors.white,
                  iconActiveColor: Colors.white,
                  hoverColor: Colors.grey[300],
                  text: "الفيديو",
                ),
                GButton(
                  hoverColor: Colors.grey[300],
                  icon: Icons.home,
                  textColor: Colors.white,
                  iconActiveColor: Colors.white,
                  margin: EdgeInsets.all(2),
                  text: "الرئيسية",
                ),
                GButton(
                  icon: Icons.comment,
                  textColor: Colors.white,
                  iconActiveColor: Colors.white,
                  hoverColor: Colors.grey[300],
                  text: "الاعلانات",
                ),
              ]),
        ));
  }
}
