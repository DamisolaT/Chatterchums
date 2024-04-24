
import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/intro_screens_widgets/spash_screen_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({required Key key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  static final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  SplashScreenCard(
                    image: "assets/images/education.png",
                    description: "Discover a world of Knowledge and Excitement",
                    buttonText: "Continue",
                    onPressed: () {
                      _pageController.animateToPage(
                        1,
                        duration: Durations.long1,
                        curve: Curves.linear,
                      );
                    },
                  ),
                  SplashScreenCard(
                    image: "assets/images/next_img.png",
                    description: "Learning is just a click away.",
                    buttonText: "Next",
                    onPressed: () {
                      _pageController.animateToPage(
                        2,
                        duration: Durations.long1,
                        curve: Curves.linear,
                      );
                    },
                  ),


                  SplashScreenCard(
                    image: "assets/images/login_img.png",
                    description: "Learning anytime, anywhere",
                    buttonText: "Next",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),

                ],
              ),
            ),
         
            SmoothPageIndicator(
              controller: _pageController,
              count: 3, // Assuming you have 3 pages
              onDotClicked: (index) {
                _pageController.animateToPage(
                  index,
                  duration: Durations.long1,
                  curve: Curves.linear,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
