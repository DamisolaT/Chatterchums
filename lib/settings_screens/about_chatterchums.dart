import 'package:flutter/material.dart';

class AboutChatterchums extends StatelessWidget {
  const AboutChatterchums({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "About chatterchums",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                child: Image.asset(
                  "assets/images/splash_icon.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Text(
              "Chatterchums V.1.0",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            buildListItem("Plans and fees", Icons.arrow_forward_ios),
            Divider(),
            buildListItem("Developer", Icons.arrow_forward_ios),
            Divider(),
            buildListItem("Privacy and Policy", Icons.arrow_forward_ios),
            Divider(),
            buildListItem("Rate us", Icons.arrow_forward_ios),
            Divider(),
            buildListItem("Follow us on social media", Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () {
          // Add onTap logic here
        },
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
