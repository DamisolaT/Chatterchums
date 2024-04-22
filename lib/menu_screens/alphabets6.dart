import 'package:chatterchums/menu_screens/alphabets7.dart';
import 'package:flutter/material.dart';

class Alphabets6Screen extends StatelessWidget {
  const Alphabets6Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
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
            top: 90,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: Text(
              "Letter Ee",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: MediaQuery.of(context).size.width / 2 - 200,
            child: Image.asset(
              "assets/images/alpha6_img.png",
              height: 400,
              width: 400,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 650,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: Text(
              "[Ii]",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Positioned(
            top: 680,
            left: MediaQuery.of(context).size.width / 2 - 20,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/spk_img.png",
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 50,),

                Container(
                   // Adjust padding to make the container smaller
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Alphabets7Screen()
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
