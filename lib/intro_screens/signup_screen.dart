
import 'package:chatterchums/widgets/loginbtn.dart';
import 'package:chatterchums/widgets/social_login.dart';
import 'package:chatterchums/widgets/textformchatter.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



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
                    "Sign up",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Email",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black54
                  ),
                ),

                SizedBox(height: 10,),
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
                  controller: passwordController,
                  text: "Enter phone number",
                  textInputType: TextInputType.text,
                  obscure: true,
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
                  controller: passwordController,
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
                SignUpBtn(),

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
