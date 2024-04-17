import 'package:flutter/material.dart';

class AboutChatterchums extends StatelessWidget {
  const AboutChatterchums({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("About chatterchums",
          style: TextStyle(
              fontSize: 22,
              color: Colors.black
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(child: Image.asset("assets/images/splash_icon.png",height: 200,width: 200,),
            ),
          ),
          Text("Chatterchums V.1.0",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Plans and fees",style: TextStyle(fontSize: 18),),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Developer",style: TextStyle(fontSize: 18),),
                Spacer(flex: 2),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Privacy and Policy",style: TextStyle(fontSize: 18),),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Rate us",style: TextStyle(fontSize: 18),),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text("Follow us on social media",style: TextStyle(fontSize: 18),),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          )
        ],
      ),


    );
  }
}