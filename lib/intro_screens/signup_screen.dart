
import 'package:chatterchums/home/homepage.dart';
import 'package:chatterchums/intro_screens/OTP%20Verification.dart';
import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/intro_screens_widgets/signupbtn.dart';
import 'package:chatterchums/intro_screens_widgets/textformchatter.dart';
import 'package:chatterchums/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final  FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController reEnterPasswordController = TextEditingController();


  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    reEnterPasswordController.dispose();
    super.dispose();
  }

  Future addUserDetails(String firstName, String lastName, int age, String email) async {
    await FirebaseFirestore.instance.collection('users').add({

      'first name': firstName,
      'last name': lastName,
      'age': age,
      'email':email

    });
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
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "First Name",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller:  firstNameController,
                  obscure:  false,
                  text: "Enter your first name",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),
                Text(
                  "Last Name",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller:  lastNameController,
                  obscure:  false,
                  text: "Enter your last name",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),
                Text(
                  "Age",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller:  ageController,
                  obscure:  false,
                  text: "Enter your age",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),

                Text(
                  "Email",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller:  emailController,
                  obscure:  false,
                  text: "Email or Phone number",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 18,
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
                SizedBox(height: 10,),
                Text(
                  "Password",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54
                  ),
                ),
                TextFormChatter(
                  controller: passwordController,
                  text: "Enter password",
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                SizedBox(height: 10,),
                Text(
                  "Re-enter password",
                  style: TextStyle(
                      fontSize: 18,
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
                SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text,
                        password: passwordController.text
                    );
                    addUserDetails(
                      firstNameController.text,
                      lastNameController.text,
                      int.parse(ageController.text),
                      emailController.text
                    );

                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomePage()));

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
