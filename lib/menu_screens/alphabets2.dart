import 'package:chatterchums/menu_screens/alphabets1.dart';
import 'package:chatterchums/menu_screens/categories_section.dart';
import 'package:flutter/material.dart';

import 'package:chatterchums/menu_screens/alphabets3.dart';
import 'package:just_audio/just_audio.dart';

class Alphabets2Screen extends StatefulWidget {
  Alphabets2Screen({Key? key});

  @override
  State<Alphabets2Screen> createState() => _Alphabets2ScreenState();
}

class _Alphabets2ScreenState extends State<Alphabets2Screen> {
  // Initialize AudioCache
  final player = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    // Pause or stop the audio player when the screen is disposed
    player.pause(); // or player.pause();
    player.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => CategoriesSection()
            ));
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 45,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: 120,
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
            top: 60, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: Text(
              "Letter Aa",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          Positioned(
            top: 150, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: GestureDetector(
              onTap: () async {
                if (isPlaying) {
                  await player.pause(); // Stop the audio if it's playing
                } else {
                  await player.setAsset("assets/audio/a_sounds.mpeg");
                  await player.play(); // Start playing the audio
                }
                // Toggle the playing state
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: Image.asset(
                "assets/images/aa_img.png",
                height: 400,
                width: 390,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            top: 590, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/spk_img.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 80,),

                Container(
                  // Adjust padding to make the container smaller
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Alphabets3Screen()
                      ));
                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),
                  ),
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
