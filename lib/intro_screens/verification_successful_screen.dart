

import 'package:flutter/material.dart';

class VerificationSuccessfulScreen extends StatelessWidget {
  const VerificationSuccessfulScreen({super.key});

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
            "assets/images/veri_img.png",
            height: 300,
            width: 300,
        ),
          SizedBox(height: 60),
          Text(
          "Verification",
          style: TextStyle(
              fontSize: 24, color: Colors.deepPurple),
              textAlign: TextAlign.center,
          ),
          Text(
            "Sucessful",
            style: TextStyle(
                fontSize: 24, color: Colors.deepPurple),
            textAlign: TextAlign.center,
          )
    ]
        )
        )
        )
    );
  }
}
