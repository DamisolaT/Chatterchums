import 'package:audioplayers/audioplayers.dart';
import 'package:chatterchums/menu_screens/alphabets3.dart';
import 'package:chatterchums/menu_screens/alphabets5.dart';
import 'package:flutter/material.dart';

class Alphabets4Screen extends StatefulWidget {
  Alphabets4Screen({Key? key});



  @override
  State<Alphabets4Screen> createState() => _Alphabets4ScreenState();
}

class _Alphabets4ScreenState extends State<Alphabets4Screen> {
  final player = AudioPlayer();
  bool isPlaying = false;

  @override
  void dispose() {
    // Release resources when screen is disposed
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Alphabets3Screen()
            ));
          },
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
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
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: Text(
              "Letter Cc",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
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
                await player.play(UrlSource("https://www.dreamenglish.com/mp3/c-song.mp3"));

                  }
                  // Toggle the playing state
                  setState(() {
                    isPlaying = !isPlaying;
                  });
              },
              child: Image.asset(
                "assets/images/alpha4_img.png",
                height: 400,
                width: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),

          Positioned(
            top: 560,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: Text(
              "[sii]",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 590,
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/spk_img.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 90,),

                Container(
                  // Adjust padding to make the container smaller
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Alphabets5Screen()
                      ));
                    },
                    icon: Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,), // Adjust size of the icon
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
