import 'package:chatterchums/menu_screens/alphabets1.dart';
import 'package:chatterchums/menu_screens/colors.dart';
import 'package:chatterchums/menu_screens/numbers.dart';
import 'package:chatterchums/menu_screens/puzzle_screen.dart';
import 'package:chatterchums/menu_screens/shapes.dart';
import 'package:chatterchums/menu_screens/simplewords.dart';
import 'package:chatterchums/menu_screens_widgets/contents_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentsBody extends StatelessWidget {
  const ContentsBody({super.key});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              "Find more contents here",
              style: TextStyle(
              fontSize: 18,
                color: Colors.black54
            ),),
          ),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Alphabets1Screen()),
              );
            },
            child: Contents_items(
              imagePath: "assets/images/abc_img.png",
              title: "lesson 1",
              subtitle: "Alphabets",
            ),
          ),

          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => NumbersScreen()),
              );
            },
            child: Contents_items(
              imagePath: "assets/images/123_img.png",
              title: "lesson 2",
              subtitle: "Numbers",
            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ColorsScreen()),
              );
            },
            child: Contents_items(
              imagePath: "assets/images/chart_img.png",
              title: "lesson 3",
              subtitle: "Colors",
            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ShapesScreen())
              );
            },
            child: Contents_items(
              imagePath: "assets/images/shape_img.png",
              title: "lesson 4",
              subtitle: "Shapes",
            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SimpleWordsScreen())
              );
            },
            child: Contents_items(
              imagePath: "assets/images/letter_img.png",
              title: "lesson 5",
              subtitle: "Simple words",
            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PuzzleScreen())
              );
            },

            child: Contents_items(
              imagePath: "assets/images/abcc_img.png",
              title: "lesson 6",
              subtitle: "Puzzle",
            ),
          ),

        ],
      ),
    );
  }
}

