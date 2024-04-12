

import 'package:chatterchums/menu_screens/main_home_screen.dart';
import 'package:chatterchums/settings_screens/profile_page.dart';
import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Profile"
          )
        ],
      ),
      body: ProfilePage(),
    );
  }
}
