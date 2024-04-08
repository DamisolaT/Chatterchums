
import 'package:chatterchums/set_up_screens/registration2.dart';
import 'package:chatterchums/set_up_screens/registration3.dart';
import 'package:chatterchums/set_up_screens/setupsuccessful.dart';
import 'package:flutter/material.dart';

class ContinuePasswordbtn extends StatelessWidget {
  const ContinuePasswordbtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => SetupSuccessfulScreen()
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 200,
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
              fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
