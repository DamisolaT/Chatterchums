
import 'package:chatterchums/set_up_screens/parental_control.dart';
import 'package:chatterchums/set_up_screens/splash_screen_4.dart';

import 'package:flutter/material.dart';

class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/parent_img.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "Hello Parent !",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),

                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Welcome to our speech learning mobile app",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),

                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                  "A vibrant space dedicated to "
                                  "nurturing your child's speech "
                                  "development journey! Here, we "
                                  "embark on an exciting adventure "
                                  "together, guiding your little one "
                                  "towards confident and clear "
                                  "communication",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),


                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           ElevatedButton(
                          onPressed: () {
                            // Add functionality for the button
                          },
                          child: Text("Skip"),
                        ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => ParentalControlScreen()
                                      ));// Add your onTap logic here
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.black, // Change the color as needed
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.white, // Change the icon color as needed
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )


                    ]
                )
            )
        )
    );
  }
}
