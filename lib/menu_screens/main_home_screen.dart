import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chatterchums/menu_screens/categories_section.dart';
import 'package:chatterchums/menu_screens/categories.dart';
import 'package:chatterchums/menu_screens_widgets/popular_categories.dart';
import 'package:chatterchums/menu_screens_widgets/popular_categories_2.dart';
import 'package:url_launcher/url_launcher.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({Key? key});



  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30), // Added vertical padding here
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple,
                          ),
                          child: Image.asset("assets/images/teddy_img.png"),
                        ),
                      ],
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Hello Damisola,",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "What do you want",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "to learn today?",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 10, bottom: 20),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: "What are you looking for?",
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                                filled: true,
                                fillColor: Colors.transparent,
                                contentPadding: EdgeInsets.zero,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular categories",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoriesSection()));
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(

                      child: PopularCategories(),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: PopularCategories2(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "Learn and win",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Upload your progress and earn badges",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                "See how it works",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.yellow[800],
                                ),
                              ),
                            ),

                            GestureDetector(
                              onTap: (){
                                   const url = "https://chatterchumstuts.netlify.app/";
                                   
                                   launchURL(url);
                              },
                                child: Icon(Icons.video_collection, color: Colors.yellow[700])),
                          ],
                        ),
                      ),
                      Image.asset("assets/images/learn_img.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
