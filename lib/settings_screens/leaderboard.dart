import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({Key? key}) : super(key: key);

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
          "Leaderboard",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: TabBar(
                    physics: const ClampingScrollPhysics(),
                    padding: EdgeInsets.all(10),
                    unselectedLabelColor: Colors.deepPurpleAccent.shade100,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepPurpleAccent),
                    tabs: [
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.purple.shade100, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Weekly"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.purple.shade100, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Monthly"),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.purple.shade100, width: 1)),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("All time"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/images/girl_imgg.png",
                          height: 70, width: 70),
                      Text(
                        "Anne",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:80.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0), // Adjust the padding as needed
                          child: Image.asset(
                            "assets/images/girl_img.png",
                            height: 70,
                            width: 70,
                          ),
                        ),
                        Text(
                          "Zikora",
                          style: TextStyle(color: Colors.deepPurpleAccent),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      Image.asset("assets/images/girl_imggg.png",
                          height: 70, width: 70),
                      Text(
                        "Paul",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.purple.shade900,
                        child: Image.asset("assets/images/two_imgg.png", height: 100,)),
                    Container(
                      color: Colors.deepPurple,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 70),
                        child: Image.asset("assets/images/one_img.png", height: 100),
                      ),
                    ),
                    Container(
                      color: Colors.purple.shade900,
                        child: Image.asset("assets/images/three_img.png", height: 100)),
                  ],
                ),
              ),

              Container(
                color: Colors.purple.shade900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/max_img.png", height: 50),
                    SizedBox(width: 10),
                    Text(
                      "Max",
                      style: TextStyle(fontSize: 20, color: Colors.yellow.shade800),
                    ),
                    SizedBox(width: 175),
                    Text(
                      "60XP",
                      style: TextStyle(fontSize: 24, color: Colors.yellow.shade800),
                    )
                  ],
                ),
              ),

              Container(
                color: Colors.purple.shade900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/barther_img.png", height: 50),
                    SizedBox(width: 10),
                    Text(
                      "Bertha",
                      style: TextStyle(fontSize: 20, color: Colors.yellow.shade800),
                    ),
                    SizedBox(width: 155),
                    Text(
                      "55XP",
                      style: TextStyle(fontSize: 24, color: Colors.yellow.shade800),
                    )
                  ],
                ),
              ),

              Container(
                color: Colors.purple.shade900,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/soji_img.png", height: 50),
                    SizedBox(width: 10),
                    Text(
                      "Soji",
                      style: TextStyle(fontSize: 20, color: Colors.yellow.shade800),
                    ),
                    SizedBox(width: 180),
                    Text(
                      "50XP",
                      style: TextStyle(fontSize: 24, color: Colors.yellow.shade800),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
