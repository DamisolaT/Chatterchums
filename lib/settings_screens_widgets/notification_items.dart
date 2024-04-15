import 'package:flutter/material.dart';

class NotificationItems extends StatelessWidget {
  const NotificationItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text("Notification options"),
        ),
        ListTile(
          title: Text(
            "Push",
            style: TextStyle(

                fontSize: 18
            ),),

          trailing: Switch(
            value: true,
            onChanged: (value){},
            activeTrackColor: Colors.grey,
          ),

        ),

        ListTile(
          title: Text(
            "Email",
            style: TextStyle(

                fontSize: 18
            ),
          ),

          trailing: Switch(
            value: true,
            onChanged: (value){},
            activeTrackColor: Colors.grey,

          ),

        ),
        ListTile(
          title: Text(
            "SMS",
            style: TextStyle(

                fontSize: 18
            ),),

          trailing: Switch(
            value: false,
            onChanged: (value){},

          ),

        ),



      ],
    );
  }
}
