import 'package:flutter/material.dart';
import 'package:untitled/bottom_navigation_bar/pages/airplay_screen.dart';
import 'package:untitled/bottom_navigation_bar/pages/email_screen.dart';
import 'package:untitled/bottom_navigation_bar/pages/home_screen.dart';
import 'package:untitled/bottom_navigation_bar/pages/pages_screen.dart';

import '../pages/search_page.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = [];

  @override
  void initState() {
    list
      ..add(AppBarDemo())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlayScreen());
    super.initState();
  }

  BottomNavigationBarItem initItem(IconData iconData, String label) {
    return BottomNavigationBarItem(icon: Icon(iconData), label: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        items: [
          initItem(Icons.search_outlined, "检索"),
          initItem(Icons.email, "Email"),
          initItem(Icons.pages, "Pages"),
          initItem(Icons.airplay, "AirPlay"),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
