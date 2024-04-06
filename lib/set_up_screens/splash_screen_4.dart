
import 'package:chatterchums/set_up_screens_widgets/splashScreenCard4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen4 extends StatefulWidget {
  const SplashScreen4({Key? key}) : super(key: key);

  @override
  State<SplashScreen4> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen4> {
  static final PageController _pageController = PageController(initialPage: 0);
  int _currentPageIndex = 0;

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
                onPageChanged: (int index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  SplashScreenCard4(
                    image: "assets/images/teacher_img.png",
                    title: "Welcome to ChatterChums",
                    description: "",
                    buttonText: "Continue",
                    onPressed: () {
                      _pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                    },
                    showSkipButton: true,
                    isFirstScreen: true, // Don't show Skip button on the first screen
                  ),
                  SplashScreenCard4(
                    image: "assets/images/parent_img.png",
                    title: "Hello Parent!",
                    description: "Lorem ipsum dolor sit amet, consectetur , "
                        "sed do eiusmod tempor incididunt ut labore "
                        "et dolore magna aliqua. Ut enim ad minim veniam,",
                    buttonText: "Skip",
                    onPressed: () {
                      _pageController.animateToPage(
                        2,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                    },
                    showSkipButton: true,
                    isFirstScreen: false, // Show Skip button on the second screen
                  ),
                  SplashScreenCard4(
                    image: "assets/images/parent_crl.png",
                    description: "Lorem ipsum dolor sit amet, consectetur , "
                        "sed do eiusmod tempor incididunt ut labore",
                    title: "Parental Control",
                    buttonText: "Skip",
                    onPressed: () {},
                    showSkipButton: true,
                    isFirstScreen: false, // Don't show Skip button on the third screen
                  )
                ],
              ),
            ),
            if (_currentPageIndex == 0) // Conditionally render the page indicator
              SmoothPageIndicator(
                controller: _pageController,
                count: 3, // Assuming there are 3 screens
                onDotClicked: (index) {
                  _pageController.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
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
