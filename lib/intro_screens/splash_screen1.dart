import 'package:chatterchums/intro_screens_widgets/spash_screen_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  static final PageController _pageController = PageController(initialPage: 0);

  List<Widget> _SplashScreens = [
    SplashScreenCard(image: "assets/images/education.png",
   description: "Discover a word of"
              "\n Knowledge and Excitment",
    buttonText: "Continue",
    onPressed: (){
      _pageController.animateToPage(
          1,
          duration: Durations.long1,
          curve: Curves.linear);
    },
    ),
    SplashScreenCard(image: "assets/images/next_img.png",
    description: "Learning is just a click away.",
    buttonText: "Next",
    onPressed: (){
      _pageController.animateToPage(
          2,
          duration: Durations.long1,
          curve: Curves.linear);
    },),
    SplashScreenCard(image: "assets/images/login_img.png",
    description: "Learning anytime,anywhere",
    buttonText: "Login",
    onPressed: (){},)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: PageView(
              controller: _pageController,
            children: _SplashScreens,),
            ),
            SmoothPageIndicator(
                controller: _pageController,
                count: _SplashScreens.length,
            //effect: ExpandingDotsEffect(
             // activeDotColor: Theme.of(context).colorScheme.primary,
            //  dotColor: Theme.of(context).colorScheme.secondary
           // ),
            onDotClicked: (index){
                  _pageController.animateToPage(
                      index,
                      duration: Durations.long1,
                      curve: Curves.linear
                  );
            },)
          ],
        ),
      )
    );
  }
}
