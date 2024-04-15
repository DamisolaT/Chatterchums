
import 'package:chatterchums/settings_screens_widgets/emailbtn.dart';
import 'package:flutter/material.dart';

class EmailAddressScreen extends StatelessWidget {
  const EmailAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back),
            ),
            title: Text("Email address",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black
              ),
            ),
          ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
                Text("Add your email",
                  style: TextStyle(
                      fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 20,),
                Text("Email helps you access",
                style: TextStyle(
                  fontSize: 18
                ),),
                Text("your account.It isn't",
                    style: TextStyle(
                    fontSize: 18
                ),),
                Text("visible to others.",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
             SizedBox(height: 20,),
             TextField(
               decoration: InputDecoration(
                 hintText: "Email"
               ),
             ),
             SizedBox(height: 30,),
             Text("We'll send a verification code to",
             style: TextStyle(
               fontSize: 18
             ),),
             Text("this email address",
               style: TextStyle(
                   fontSize: 18
               ),),
             SizedBox(height: 200,),
             EmailButton()

              ],


        ),
      ),
    );
  }
}
