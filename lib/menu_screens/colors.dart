import 'package:audioplayers/audioplayers.dart';
import 'package:chatterchums/menu_screens/shapes.dart';
import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({Key? key});
  final player = AudioPlayer();

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
                color: Colors.pink,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: MediaQuery.of(context).size.width / 2 - 150,
            child: GestureDetector(
              onTap: () {
                player.play(UrlSource("https://www.dreamenglish.com/mp3/colorsong201.mp3"));
                print("Image tapped!");
              },
              child: Image.asset(
                "assets/images/color_img.png",
                height: 400,
                width: 300,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            top: 650,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: Image.asset(
              "assets/images/spk_img.png",
              height: 50,
              width: 50,
            ),
          ),
          // Other widgets of your screen...
        ],
      ),
    );
  }
}
