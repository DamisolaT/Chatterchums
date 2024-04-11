
import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

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
                "Lesson 3",
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
                "Names of colors",
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
              child: Image.asset("assets/images/color_img.png",
                  height: 400,
                  width: 400,
                  fit: BoxFit.contain)
          ),
          Positioned(
              top: 650,
              left: MediaQuery.of(context).size.width / 2 - 20,
              child: Image.asset("assets/images/spk_img.png",
                height: 50,
                width: 50,
              )
          )

          // Other widgets of your screen...
        ],
      ),


    );
  }
}
