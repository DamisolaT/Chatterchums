

import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
        onPressed: (){},
        icon: Icon(Icons.arrow_back),

      ),
        title: Text("Leaderboard",
        style: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search))
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 60,
                color: Colors.white,
                child: TabBar(
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 10),
                  unselectedLabelColor: Colors.deepPurpleAccent.shade100,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepPurpleAccent
                  ),
                  tabs: [
                    Tab(
                    child: Container(
                    height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.purple.shade100
                            , width: 1)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Weekly"),
                      ),
                    )
                    ),
                    Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.purple.shade100, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("Monthly"),
                          ),
                        )
                    ),
                    Tab(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.purple.shade100, width: 1)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text("All time"),
                          ),
                        )
                    ),
                  ],
                ),
                
              ),
            ),
              SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/girl_imgg.png", height: 100, width: 100,),
                    Text("Anne",
                      style: TextStyle(
                        color: Colors.deepPurpleAccent
                      ),)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/girl_img.png",
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Zikora",
                        style: TextStyle(color: Colors.deepPurpleAccent),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Image.asset("assets/images/girl_imggg.png", height: 100, width: 100,),
                    Text("Paul",
                      style: TextStyle(
                          color: Colors.deepPurpleAccent
                      ),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
