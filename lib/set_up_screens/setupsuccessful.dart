

import 'package:flutter/material.dart';

class SetupSuccessfulScreen extends StatelessWidget {
  const SetupSuccessfulScreen({super.key});

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
                        "assets/images/success_img.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 24, color: Colors.deepPurple),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "set-up",
                        style: TextStyle(
                            fontSize: 24, color: Colors.deepPurple),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "successful",
                        style: TextStyle(
                            fontSize: 24, color: Colors.deepPurple),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 100,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Add your onTap logic here
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


                    ]
                )
            )
        )
    );
  }
}