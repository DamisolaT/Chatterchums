import 'package:audioplayers/audioplayers.dart';
import 'package:chatterchums/menu_screens/alphabets2.dart';
import 'package:chatterchums/menu_screens/alphabets4.dart';
import 'package:flutter/material.dart';

class Alphabets3Screen extends StatefulWidget {
   Alphabets3Screen({Key? key});

  @override
  State<Alphabets3Screen> createState() => _Alphabets3ScreenState();
}

class _Alphabets3ScreenState extends State<Alphabets3Screen> {
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
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Alphabets2Screen()
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
            left: MediaQuery.of(context).size.width / 2 - 60,
            child: Text(
              "Letter Bb",
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
                player.play(UrlSource("https://www.dreamenglish.com/mp3/b-song.mp3"));

                  }

                  setState(() {
                    isPlaying = !isPlaying;
                  });
              },
              child: Image.asset(
                "assets/images/alpha3_img.png",
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
              "[bi]",
              style: TextStyle(
                  color: Colors.green.shade800,
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
                          builder: (context) => Alphabets4Screen()
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
