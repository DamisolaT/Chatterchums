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
            selectedItemColor: Colors.deepPurpleAccent,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: _onItemTapped,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/home_img.png'),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/menu_img.png'),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/settings_img.png'),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Image.asset('assets/images/profile_img.png'),
                label: "Profile",
              ),
            ],
          ),
        );
  }
}
