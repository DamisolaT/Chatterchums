
import 'package:chatterchums/set_up_screens/registration1.dart';
import 'package:chatterchums/set_up_screens/splash_screen_4.dart';
import 'package:chatterchums/set_up_screens_widgets/continuebtn.dart';
import 'package:flutter/material.dart';

class ParentalControlScreen extends StatelessWidget {
  const ParentalControlScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Image.asset(
              "assets/images/parent_crl.png",
              height: 300,
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              "Parental Control",
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1. Content filtering: Enable"
                        " parents to filter content content"
                        " to ensure age-appropriat ematerials "
                        "and tailor exercises"
                        " to their child's specific speech challenges.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "2. Parental Dashboard Provide a"
                        " centralized dashboard where "
                        "parents can monitor their"
                        " child's progress, view completed"
                        " exercises, and receive insights"
                        " from speech therapists or educators",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

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
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registration1(),
                          ),
                        );
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
