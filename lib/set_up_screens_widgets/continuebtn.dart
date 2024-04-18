
import 'package:chatterchums/set_up_screens/welcome1.dart';
import 'package:flutter/material.dart';

class Continuebtn extends StatelessWidget {
  const Continuebtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => WelcomeScreen1()
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 300,
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
        child: Text(
          "Continue",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
