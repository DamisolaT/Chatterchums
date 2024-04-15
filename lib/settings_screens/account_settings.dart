
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
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
                  SizedBox(width: 100,),
                  Icon(Icons.arrow_right, size: 40,)
                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.location_on,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Address",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 185,),
                  Icon(Icons.arrow_right, size: 40,)
                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.email,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Email",style: TextStyle(fontSize: 18),),
                  SizedBox(width:205,),
                  Icon(Icons.arrow_right, size: 40,)
                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.delete,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Delete Account",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 130,),
                  Icon(Icons.arrow_right, size: 40,)
                ],
              ),
              Divider(),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.logout,color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Log out",style: TextStyle(fontSize: 18),),
                  SizedBox(width: 190,),
                  Icon(Icons.arrow_right, size: 40,)
                ],
              ),
              Divider(),


            ],
          )
      ),
    );
  }
}
