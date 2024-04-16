import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/intro_screens/onboarding_screen.dart';
import 'package:chatterchums/intro_screens/splash_screen1.dart';
import 'package:chatterchums/menu_screens/alphabets1.dart';
import 'package:chatterchums/menu_screens/alphabets10.dart';
import 'package:chatterchums/menu_screens/alphabets11.dart';
import 'package:chatterchums/menu_screens/alphabets3.dart';
import 'package:chatterchums/menu_screens/alphabets4.dart';
import 'package:chatterchums/menu_screens/alphabets5.dart';
import 'package:chatterchums/menu_screens/alphabets6.dart';
import 'package:chatterchums/menu_screens/alphabets7.dart';
import 'package:chatterchums/menu_screens/alphabets8.dart';
import 'package:chatterchums/menu_screens/alphabets9.dart';
import 'package:chatterchums/menu_screens/colors.dart';
import 'package:chatterchums/menu_screens/home_screen.dart';
import 'package:chatterchums/menu_screens/numbers.dart';
import 'package:chatterchums/menu_screens/shapes.dart';
import 'package:chatterchums/menu_screens/simplewords.dart';
import 'package:chatterchums/set_up_screens/registration1.dart';
import 'package:chatterchums/set_up_screens/splash_screen_4.dart';
import 'package:chatterchums/settings_screens/account_settings.dart';
import 'package:chatterchums/settings_screens/add_card.dart';
import 'package:chatterchums/settings_screens/leaderboard.dart';
import 'package:chatterchums/settings_screens/profile.dart';
import 'package:chatterchums/settings_screens/profile_page.dart';
import 'package:chatterchums/settings_screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'menu_screens/alphabets2.dart';
import 'settings_screens/change_password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(
      context,
      designSize: const Size(430, 932),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:LeaderBoardScreen()
    );
  }
}

