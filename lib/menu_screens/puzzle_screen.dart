import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:flutter/material.dart';

class PuzzleScreen extends StatelessWidget {
  const PuzzleScreen({Key? key});

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
                "Lesson 6",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: MediaQuery.of(context).size.width / 2 - 150,
            child: Text(
              "What animal is this?",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: MediaQuery.of(context).size.width / 2 - 100, // Adjusted for centering
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                "assets/images/animal_img.png",
                height: 200,
                width: 200,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: Colors.black,
                thickness: 1.0, // Adjusted thickness to make it thinner
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 20,
            right: 20,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "G",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "P",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "O",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "E",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "B",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "F",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "A",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "K",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
                // Add your onTap logic here
              },
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
