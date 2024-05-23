
import 'package:chatterchums/home/homepage.dart';
import 'package:chatterchums/intro_screens/OTP%20Verification.dart';
import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/intro_screens_widgets/signupbtn.dart';
import 'package:chatterchums/intro_screens_widgets/textformchatter.dart';
import 'package:chatterchums/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final  FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController reEnterPasswordController = TextEditingController();

  @override
  void dispose() {
   emailController.dispose();
   phoneNumberController.dispose();
   passwordController.dispose();
   reEnterPasswordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => LoginScreen()
            ));
          },
          icon: Icon(Icons.arrow_back),
        ),

      ),
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
                    "Sign up",
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
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),
                ),

                ////Password Input
                TextFormChatter(
                  controller: phoneNumberController,
                  text: "Enter phone number",
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),
                SizedBox(height: 20,),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller: passwordController,
                  text: "Enter password",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                SizedBox(height: 20,),
                Text(
                  "Re-enter password",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller: reEnterPasswordController,
                  text: "Re-enter password",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      width: 150, // Adjust the width of the divider line
                      height: 1, // Adjust the height of the divider line
                      color: Colors.deepPurple, // Specify the color of the divider line
                    ),
                SizedBox(height: 70,),
                GestureDetector(
                  onTap: (){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text
                    ).then((value){
                      print("Create a new account");
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
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
                        style: TextStyle(
                            color: Colors.purple[400],
                            fontSize: 18
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginScreen()
                          ));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          ]
            ),
        )
        ),
      ),

    );
  }
}
