        
        import 'package:chatterchums/settings_screens/about_chatterchums.dart';
import 'package:chatterchums/settings_screens/account_settings.dart';
import 'package:chatterchums/settings_screens/add_card.dart';
import 'package:chatterchums/settings_screens/language_settings.dart';
import 'package:chatterchums/settings_screens/leaderboard.dart';
import 'package:chatterchums/settings_screens/notification_preferences.dart';
import 'package:chatterchums/settings_screens/profile.dart';
import 'package:chatterchums/settings_screens/profile_page.dart';
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
                title: Text(
                  "Settings",
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
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()),
                          );
                        },
                        child: Icon(Icons.arrow_forward_ios),
                      )

                    ],
              ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.person,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Account Settings",style: TextStyle(fontSize: 18),),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AccountSettingsPage()),
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        )

                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.call,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Notification preferences",style: TextStyle(fontSize: 18),),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NotificationScreen()),
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        )

                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.language,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Language settings",style: TextStyle(fontSize: 18),),
                         Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LanguageSettings()),
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        )

                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.details,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Card details",style: TextStyle(fontSize: 18),),
                         Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AddCardScreen()),
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        )

                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.leaderboard,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("Leaderboard",style: TextStyle(fontSize: 18),),
                         Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LeaderBoardScreen()),
                                );
                              },
                              child: Icon(Icons.arrow_forward_ios),
                            )

                      ],
                    ),
                    Divider(),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Icon(Icons.language,color: Colors.black,),
                        SizedBox(width: 8,),
                        Text("About the app",style: TextStyle(fontSize: 18),),
                          Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AboutChatterchums()),
                            );
                          },
                          child: Icon(Icons.arrow_forward_ios),
                        )

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
