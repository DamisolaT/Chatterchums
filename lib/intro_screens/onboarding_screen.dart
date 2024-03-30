
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

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
                    child: Image.asset("images/img1.png",height:250 ,
                    )
                )
            ),
            Padding(padding: EdgeInsets.only(bottom: 20),
            child: Text("CHATTERCHUMS",
            style: TextStyle(
              fontSize: 18,
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
