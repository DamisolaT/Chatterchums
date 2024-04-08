

import 'package:chatterchums/set_up_screens_widgets/nextbtn.dart';
import 'package:chatterchums/set_up_screens_widgets/nextbtn3.dart';
import 'package:flutter/material.dart';

class Registration3 extends StatelessWidget {
  const Registration3({super.key});

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
                        "assets/images/reg3_img.png",
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 60),
                      Text(
                        "How old is",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "your child?",
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

                      decoration: InputDecoration(

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
                  NextBtn3()

                    ]
                )
            )
        )
    );
  }
}
