import 'package:chatterchums/intro_screens/authentication_screen.dart';
import 'package:flutter/material.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/otp_img.png",
                height: 250, width: 250,),
              SizedBox(height: 20,),
              Text(
                "Enter your email/phone number to receive\na verification code",
              style: TextStyle(
                fontSize: 14,
                color: Colors.deepPurple
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 60,
                width: 320,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(color: Colors.deepPurple, width: 2)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.deepPurple,width: 2), // Set the border color
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Colors.deepPurple, width: 2), // Set the border color
                      ),

                      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                      fillColor: Colors.white,
                      filled: true
                  ),
                ),
              ),

              SizedBox(height: 150,),
              SizedBox(
                height: 45,
                width: 150,
                child:ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AuthenticationScreen()
                    ));
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),

                ) ,
              )

            ],
          ),
        ),
      ),
    );
  }
}

