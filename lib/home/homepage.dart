import 'package:flutter/material.dart';
import 'package:chatterchums/menu_screens/main_home_screen.dart';
import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:chatterchums/settings_screens/profile_page.dart';

class HomePage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => HomePage());

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    MainHomeScreen(),
    CategoriesPage(),
    SettingsPage(),
    ProfilePage()
  ];

  var selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: IndexedStack(
            children: listOfPages,
            index: selectedIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.blue,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.savings),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.rocket_launch),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: "Profile",
              ),
            ],
          ),
        );
  }
}
