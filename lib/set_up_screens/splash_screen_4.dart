

import 'package:chatterchums/menu_screens/home_screen.dart';
import 'package:chatterchums/set_up_screens/splash_screen_4.dart';
import 'package:chatterchums/set_up_screens_widgets/continuebtn.dart';
import 'package:flutter/material.dart';

class SplashScreen4 extends StatelessWidget {
  const SplashScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/teacher_img.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "Welcome to",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "Chatterchums",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                           textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20,),
                      Continuebtn()

                    ]
                )
            )
        )
    );
  }
}
