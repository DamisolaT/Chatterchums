
import 'package:chatterchums/intro_screens/signup_screen.dart';
import 'package:chatterchums/widgets/loginbtn.dart';
import 'package:chatterchums/widgets/signupbtn.dart';
import 'package:chatterchums/widgets/social_login.dart';
import 'package:chatterchums/widgets/textformchatter.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
 LoginScreen({super.key});
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

                SizedBox(height: 15,),
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
                    text: "******",
                    textInputType: TextInputType.text,
                    obscure: true,
                ),
                SizedBox(height: 50,),
                LoginBtn(),
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
