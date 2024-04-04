
import 'dart:async';

import 'package:chatterchums/intro_screens/splash_screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), (){
     Get.to(const SplashScreen1());
    });
    final size  = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children:[
            Expanded(
                child: Center(
                    child: Image.asset("assets/images/splash_icon.png",height:250 ,
                      //Image.asset("assets/images/google_img.png",height: 30,),
                    )
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 70),
            child: Text("CHATTERCHUMS",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.purple
            ),
            ),
            )
        ]
          ) ,
        ),


    );
  }
}
