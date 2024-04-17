
import 'dart:async';

import 'package:chatterchums/intro_screens/splash_screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  bool isLoading = true;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..repeat();

    // Delayed navigation
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen1(key: UniqueKey(),)),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    
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
            child: Text(
              "CHATTERCHUMS",
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
