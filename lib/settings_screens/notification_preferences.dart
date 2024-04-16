
import 'package:chatterchums/settings_screens_widgets/notification_items.dart';
import 'package:chatterchums/settings_screens_widgets/notificationbtn.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
            "Notification",
            style: TextStyle(
                fontSize: 22,
                color: Colors.black
            ),
          ),
        ),
      body: Column(
        children: [
          NotificationItems(),
          SizedBox(height: 200,),
          NotificationButton()


        ],
      ),
    );
  }
}
