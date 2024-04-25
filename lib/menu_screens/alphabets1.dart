import 'package:chatterchums/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:chatterchums/menu_screens/alphabets2.dart';

class Alphabets1Screen extends StatefulWidget {
  Alphabets1Screen({Key? key}) : super(key: key);

  @override
  _Alphabets1ScreenState createState() => _Alphabets1ScreenState();
}

class _Alphabets1ScreenState extends State<Alphabets1Screen> {
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
                builder: (context) => HomePage()
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
            top: 60, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Text(
              "The English",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 100, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: Text(
              "alphabets",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 170, // Adjusted top position to move up
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: GestureDetector(
              onTap: () async {
                if (isPlaying) {
                  await player.pause();
                } else {
                  await player.play(UrlSource("https://www.dreamenglish.com/Dream%20English%20Traditional%20ABC01.mp3"));
                }
                // Toggle the playing state
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
              child: Image.asset(
                "assets/images/alpha_img.png",
                height: 400,
                width: 400,
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
                SizedBox(width: 100,),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Alphabets2Screen()
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
