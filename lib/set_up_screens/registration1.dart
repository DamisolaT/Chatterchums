

import 'package:chatterchums/set_up_screens_widgets/nextbtn.dart';
import 'package:flutter/material.dart';

class Registration1 extends StatelessWidget {
  const Registration1({super.key});

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
                        "assets/images/reg1_img.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "What is the name\nof your child?",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.deepPurple,
                        fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 20,),
                      SizedBox(
                        height: 60,
                        width: 300,
                        child: TextFormField(
                            textAlign: TextAlign.center,
                           decoration: InputDecoration(
                            hintText: "Jane Doe",
                              hintStyle: TextStyle(fontSize: 16,
                                  color: Colors.deepPurple,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16),
                                  borderSide: BorderSide(color: Colors.deepPurple, width: 2)
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.deepPurple,width: 2), // Set the border color
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(color: Colors.deepPurple, width: 2), // Set the border color
                              ),

                              contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                              fillColor: Colors.white,
                              filled: true
                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      NextBtn()

                    ]
                )
            )
        )
    );
  }
}
