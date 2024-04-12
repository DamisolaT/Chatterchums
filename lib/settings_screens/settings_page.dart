        
        import 'package:flutter/cupertino.dart';
        import 'package:flutter/material.dart';
        
        class SettingsPage extends StatelessWidget {
          const SettingsPage({super.key});
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.arrow_back),
                ),
                title: Text("Settings", 
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
                      Icon(Icons.people,color: Colors.black,),
                       SizedBox(width: 8,),
                       Text("Profile",style: TextStyle(fontSize: 18),),
                      SizedBox(width: 200,),
                      Icon(Icons.arrow_forward_ios)
                    ],
              ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.person,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Account Settings",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 110,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.call,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Notification preferences",style: TextStyle(fontSize: 18),),
                        SizedBox(width:50,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.language,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Language settings",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 95,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.details,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Card details",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 150,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.leaderboard,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Leaderboard",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 145,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.language,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("About the app",style: TextStyle(fontSize: 18),),
                        SizedBox(width: 130,),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Divider(),
                    SizedBox(height: 10,)
        
               ],
             )
              ),
            );
          }
        }
