
import 'package:chatterchums/set_up_screens/registration2.dart';
import 'package:chatterchums/set_up_screens/registration3.dart';
import 'package:chatterchums/set_up_screens/setupsuccessful.dart';
import 'package:chatterchums/settings_screens/address.dart';
import 'package:chatterchums/settings_screens/emailaddress.dart';
import 'package:flutter/material.dart';

class AddressButton extends StatelessWidget {
  const AddressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),


        ),
        child: Text(
          "Done",
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
