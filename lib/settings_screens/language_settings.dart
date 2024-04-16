
import 'package:chatterchums/settings_screens_widgets/language_items.dart';
import 'package:chatterchums/settings_screens_widgets/languagebtn.dart';
import 'package:chatterchums/settings_screens_widgets/notificationbtn.dart';
import 'package:flutter/material.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){

          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Language settings",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          LanguageItems(),
          SizedBox(height: 180,),
          LanguageButton()



        ],
      ),
    );
  }
}
