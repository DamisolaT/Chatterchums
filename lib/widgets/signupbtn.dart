


import 'package:chatterchums/intro_screens/OTP%20Verification.dart';
import 'package:flutter/material.dart';

class SignUpBtn extends StatelessWidget {
  const SignUpBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10
              )
            ]
        ),
        child: Center(
          child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyOtp()
              ));
            },
            child: Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
}
