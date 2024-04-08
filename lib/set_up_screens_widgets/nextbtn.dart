
import 'package:chatterchums/set_up_screens/registration2.dart';
import 'package:chatterchums/set_up_screens/registration3.dart';
import 'package:flutter/material.dart';

class NextBtn extends StatelessWidget {
  const NextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => Registration2()
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 300,
        child: Text(
          "Next",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
