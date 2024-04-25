import 'package:audioplayers/audioplayers.dart';
import 'package:chatterchums/home/homepage.dart';
import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/menu_screens/colors.dart';
import 'package:flutter/material.dart';

class NumbersScreen extends StatefulWidget {
  NumbersScreen({Key? key});

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
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
                builder: (context) => CategoriesPage()
            ));
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
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
                "Lesson 2",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: Text(
              "Numbers",
              style: TextStyle(
                color: Colors.purple,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: GestureDetector(
              onTap: () async {
                if (isPlaying) {
                await player.pause();
                } else {
                await player.play(UrlSource("https://www.dreamenglish.com/Dream%20English%20Lets%20Count%201%20to%201001.mp3"));
                }
                // Toggle the playing state
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: Image.asset(
                "assets/images/num_img.png",
                height: 400,
                width: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            top: 570,
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
