import 'package:chatterchums/menu_screens/contents_section.dart';
import 'package:chatterchums/menu_screens_widgets/popular_categories.dart';
import 'package:chatterchums/menu_screens_widgets/popular_categories_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                        color: Colors.deepPurple
                      ),
                      child: Image.asset("assets/images/teddy_img.png"),
                    ),

                  ],
                ),
                SizedBox(width: 8,),
                Row(
                  children: [
                    Text("Hello Damisola,",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),),

                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("What do you want",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
            ),
            Text("to learn today?",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: 350,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), // Shadow color
                      spreadRadius: 2, // Spread radius
                      blurRadius: 3, // Blur radius
                      offset: Offset(0, 1), // Offset in x and y directions
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
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular categories",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add your onTap logic here
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ContentsSection()
                    ));
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                    child:
                    PopularCategories()),
                SizedBox(width: 12,),
                Expanded(
                    child:
                    PopularCategories2()),
              ],
            ),
            SizedBox(height: 20,),
            Text("Learn and win",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
            Text(
              "Upload your progress and earn badges",
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 15
            ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 350,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(16)
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child:
                            Text(
                              "See how it works",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.yellow[800]
                            ),)),
                            Icon(Icons.video_collection,color: Colors.yellow[700],)
                          ],
                        ),

                    ),
                    Image.asset("assets/images/learn_img.png")
                  ]
              ),
            )

          ],
        ),
      ),
    );
  }
}
