import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:flutter/material.dart';

class PuzzleScreen extends StatelessWidget {
  const PuzzleScreen({Key? key});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lesson 6",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "What animal is this?",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              "assets/images/animal_img.png",
              height: 200,
              width: 200,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
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
                    SizedBox(height: 10),
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoriesPage()),
          );
          // Add your onTap logic here
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
