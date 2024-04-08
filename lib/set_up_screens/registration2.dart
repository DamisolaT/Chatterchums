import 'package:chatterchums/set_up_screens_widgets/nextbtn.dart';
import 'package:chatterchums/set_up_screens_widgets/nextbtn2.dart';
import 'package:flutter/material.dart';

class Registration2 extends StatelessWidget {
  const Registration2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/reg2_img.png",
              width: 250,
                height: 250,
              ),
              SizedBox(height: 60,),
              Text("What is your",
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600
              ),
              ),
              Text("child's gender?",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 40,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic for Male here
                    },
                    child: Text("Male"),
                  ),
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic for Female here
                    },
                    child: Text(
                      "Female",
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70,),
              NextBtn2()
            ],
          ),
        ),
      ),
    );
  }
}
