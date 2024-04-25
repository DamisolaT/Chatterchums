import 'package:chatterchums/home/homepage.dart';
import 'package:chatterchums/menu_screens/alphabets10.dart';
import 'package:chatterchums/menu_screens/categories_section.dart';
import 'package:chatterchums/menu_screens/numbers.dart';
import 'package:flutter/material.dart';

class Alphabets11Screen extends StatelessWidget {
  const Alphabets11Screen({Key? key});

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
              "Letter Jj",
              style: TextStyle(
                color: Colors.red,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: Image.asset(
              "assets/images/alpha11_img.png",
              height: 400,
              width: 400,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 560,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: Text(
              "[djei]",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 590,
            left: MediaQuery.of(context).size.width / 2 - 80,
            child: Image.asset(
              "assets/images/spk_img.png",
              height: 40,
              width: 40,
            ),
          ),

          // Other widgets of your screen...
        ],
      ),
    );
  }
}
