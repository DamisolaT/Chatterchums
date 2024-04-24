import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/menu_screens/simplewords.dart';
import 'package:flutter/material.dart';

class ShapesScreen extends StatelessWidget {
  const ShapesScreen({Key? key});

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
                "Lesson 4",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: MediaQuery.of(context).size.width / 2 - 120,
            child: Text(
              "Names of shapes",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: Image.asset(
              "assets/images/shp_img.png",
              height: 400,
              width: 400,
              fit: BoxFit.contain,
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
