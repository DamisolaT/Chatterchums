


import 'package:chatterchums/intro_screens/OTP%20Verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpBtn extends StatefulWidget {
  const SignUpBtn({super.key});

  @override
  State<SignUpBtn> createState() => _SignUpBtnState();
}

class _SignUpBtnState extends State<SignUpBtn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text,
                  password: passwordController.text
              ).then((value){
                print("Create a new account");
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => MyOtp()));
              }).onError((error, stackTrace) {
               print("Error ${error.toString()}");

              });

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
