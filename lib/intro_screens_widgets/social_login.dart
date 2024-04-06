
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
              "Or sign up with",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(

                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.1),
                      blurRadius: 10
                    )
                  ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Google",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20
                    ),
                    ),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/google_img.png", height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(

                height: 55,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.withOpacity(0.1),
                          blurRadius: 10
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Facebook",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20
                      ),
                    ),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/facebook_img.png", height: 30,)
                  ],
                ),
              ),
            )
          ],
        ),

      ],
    );
  }
}
