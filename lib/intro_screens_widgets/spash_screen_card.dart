import 'package:flutter/material.dart';
class SplashScreenCard extends StatelessWidget {
  final String image,description, buttonText;
  final Function onPressed;

  const SplashScreenCard({super.key,
    required this.image,

    required this.description,
    required this.buttonText,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height *0.80,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
              image,
            fit: BoxFit.contain,),
          ),
          Column(
            children: [
              Text(
                description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,

              ),
              ),
            ],
          ),
          MaterialButton(
            minWidth: 300,
              onPressed:() => onPressed(),
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              buttonText,
            style: TextStyle(
              color: Colors.white
            ),),
          )
        ],
      ),
    );
  }
}
