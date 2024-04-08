
import 'package:flutter/material.dart';

class SplashScreenCard4 extends StatelessWidget {
  final String image, description, title, buttonText;
  final Function onPressed;
  final bool showSkipButton;

  const SplashScreenCard4({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
    required this.showSkipButton,
    required bool isFirstScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.80,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30), // Add additional space before the button
              if (showSkipButton)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (!_isFirstScreen(context)) // Display button only on non-first screens
                      ElevatedButton(
                        onPressed: () {
                          // Handle next button pressed
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          child: Text(
                            buttonText,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    if (_isFirstScreen(context)) // Display arrow only on first screen
                      IconButton(
                        onPressed: () {
                          // Handle next arrow icon pressed
                        },
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.black,
                      ),


                  ],
                ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to check if the current screen is the first screen
  bool _isFirstScreen(BuildContext context) {
    return ModalRoute.of(context)?.settings.arguments == 0;
  }
}
