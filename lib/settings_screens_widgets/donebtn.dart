
import 'package:chatterchums/set_up_screens/registration2.dart';
import 'package:chatterchums/set_up_screens/registration3.dart';
import 'package:chatterchums/set_up_screens/setupsuccessful.dart';
import 'package:chatterchums/settings_screens/address.dart';
import 'package:flutter/material.dart';

class DoneButton extends StatelessWidget {
  const DoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => AddressScreen()
        ));
      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
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
          "Done",
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
