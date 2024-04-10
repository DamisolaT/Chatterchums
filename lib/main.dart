import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/intro_screens/onboarding_screen.dart';
import 'package:chatterchums/intro_screens/splash_screen1.dart';
import 'package:chatterchums/menu_screens/home_screen.dart';
import 'package:chatterchums/set_up_screens/registration1.dart';
import 'package:chatterchums/set_up_screens/splash_screen_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomeScreen()
    );
  }
}

