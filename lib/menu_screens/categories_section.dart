import 'package:flutter/material.dart';
import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/menu_screens/main_home_screen.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection ({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: 1, // Set initial index to 1 (Categories)
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/home_img.png'),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/menu_img.png'),
              label: "Categories"
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/settings_img.png'),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/profile_img.png'),
              label: "Profile"
          )
        ],
      ),
      body: CategoriesPage(),
    );
  }
}
