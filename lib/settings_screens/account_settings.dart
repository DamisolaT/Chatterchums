
import 'package:chatterchums/intro_screens/login_screen.dart';
import 'package:chatterchums/settings_screens/address.dart';
import 'package:chatterchums/settings_screens/change_password.dart';
import 'package:chatterchums/settings_screens/emailaddress.dart';
import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => SettingsPage()
            ));
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Account Settings",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(left: 16, right: 16,top: 25),
          child:ListView(
            children: [
              Row(
                children: [
                  Icon(Icons.password,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Change Password",style: TextStyle(fontSize: 18),),
                   Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic here
                      // For example, you can navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangePassword()),
                      );
                    },
                    child: Icon(Icons.arrow_right, size: 40,),
                  )

                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.location_on,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Address",style: TextStyle(fontSize: 18),),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic here
                      // For example, you can navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddressScreen()),
                      );
                    },
                    child: Icon(Icons.arrow_right, size: 40,),
                  )

                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.email,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Email",style: TextStyle(fontSize: 18),),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic here
                      // For example, you can navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmailAddressScreen()),
                      );
                    },
                    child: Icon(Icons.arrow_right, size: 40,),
                  )

                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.delete,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Delete Account",style: TextStyle(fontSize: 18),),
                  Spacer(),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Icon(Icons.arrow_right, size: 40,),
                  )

                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.logout,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Log out",style: TextStyle(fontSize: 18),),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Add your onTap logic here
                      // For example, you can navigate to another screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Icon(Icons.arrow_right, size: 40,),
                  )

                ],
              ),
              Divider(),


            ],
          )
      ),
    );
  }
}
