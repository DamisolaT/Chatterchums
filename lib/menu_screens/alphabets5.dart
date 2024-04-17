
import 'package:flutter/material.dart';

class Alphabets5Screen extends StatelessWidget {
  const Alphabets5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: MediaQuery.of(context).size.width / 2 - 45, // Half of the width minus half of the container width
            child: Container(
              alignment: Alignment.center,
              height: 25,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.yellow[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Lesson 1",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
              top: 90,
              left: MediaQuery.of(context).size.width / 2 - 100,
              child: Text(
                "Letter Aa",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 34,
                    fontWeight: FontWeight.bold
                ),
              )
          ),

          Positioned(
              top: 230,
              left: MediaQuery.of(context).size.width / 2 - 200,
              child: Image.asset("assets/images/alpha5_img.png",
                  height: 400,
                  width: 400,
                  fit: BoxFit.contain)
          ),
      Positioned(
          top: 650,
          left: MediaQuery.of(context).size.width / 2 - 30,
          child: Text(
            "[dii]",
            style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          )
      ),
      Positioned(
          top: 710,
          left: MediaQuery.of(context).size.width / 2 - 20,
          child: Image.asset("assets/images/spk_img.png",
            height: 40,
            width: 40,
          )
      ),


          // Other widgets of your screen...
        ],
      ),


    );
  }
}
