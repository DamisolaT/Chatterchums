
import 'package:chatterchums/home/homepage.dart';
import 'package:chatterchums/intro_screens/signup_screen.dart';
import 'package:chatterchums/intro_screens_widgets/loginbtn.dart';
import 'package:chatterchums/intro_screens_widgets/social_login.dart';
import 'package:chatterchums/intro_screens_widgets/textformchatter.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
 LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final  FirebaseAuthService _auth = FirebaseAuthService();
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();

 @override
 void dispose() {
   emailController.dispose();
   passwordController.dispose();

   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Email",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54
                ),
                ),


                ////Email Input
                TextFormChatter(
                  controller:  emailController,
                  obscure:  false,
                  text: "Email or Phone number",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20,),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),
                ),
                ////Password Input
                TextFormChatter(
                    controller: passwordController,
                    obscure: true,
                    text: "Enter Password",
                    textInputType: TextInputType.text,

                ),
                SizedBox(height: 50,),
                GestureDetector(
                  onTap: (){
                    FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text
                    ).then((value){
                      print("User successfully signedIn");
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");

                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "Login ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 70,),
                SocialLogin()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Don't have an account?",
              style: TextStyle(
                color: Colors.purple[400],
                fontSize: 18
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SignUpScreen()
                ));
              },
              child: Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
