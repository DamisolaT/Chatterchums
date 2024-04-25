import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:chatterchums/settings_screens_widgets/addcardbtn.dart';
import 'package:flutter/material.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingsPage()
            ));

          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Card Details",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/card_img.png",
                width: double.infinity, // Make the image full width
                fit: BoxFit.cover, // Adjust the image to cover the space
              ),
              SizedBox(height: 16),
              Text(
                "Name on card",
                style: TextStyle(fontSize: 16), // Example font size
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12), // Adjust text field size
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Card number",
                style: TextStyle(fontSize: 16), // Example font size
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12), // Adjust text field size
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text("Expiration date"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12), // Adjust text field size
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ListTile(
                      title: Text("CVV"),
                      subtitle: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12), // Adjust text field size
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                "Card number",
                style: TextStyle(fontSize: 16), // Example font size
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(12), // Adjust text field size
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              SizedBox(height: 16),
              AddCardButton(),
            ],
          ),
        ),
      ),
    );
  }
}
