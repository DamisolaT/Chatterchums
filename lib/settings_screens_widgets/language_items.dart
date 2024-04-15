import 'package:flutter/material.dart';

class LanguageItems extends StatelessWidget {
  const LanguageItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
              "Choose your prefferred languages"
          ),
        ),
        ListTile(
          title: Text(
            "English",
            style: TextStyle(
                fontSize: 18
            ),
          ),
          trailing: Icon(Icons.check), // Placing the check mark icon at the back

        ),
        ListTile(
          title: Text(
            "Pidgin",
            style: TextStyle(

                fontSize: 18
            ),
          ),



        ),
        ListTile(
          title: Text(
            "Yoruba",
            style: TextStyle(

                fontSize: 18
            ),),



        ),
        ListTile(
          title: Text(
            "Hausa",
            style: TextStyle(

                fontSize: 18
            ),),



        ),
        ListTile(
          title: Text(
            "Hausa",
            style: TextStyle(

                fontSize: 18
            ),),



        ),
        ListTile(
          title: Text(
            "Igbo",
            style: TextStyle(

                fontSize: 18
            ),),



        ),



      ],
    );
  }
}
