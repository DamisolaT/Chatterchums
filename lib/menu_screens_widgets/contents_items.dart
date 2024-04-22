
import 'package:chatterchums/menu_screens/alphabets1.dart';
import 'package:chatterchums/menu_screens/alphabets2.dart';
import 'package:flutter/material.dart';

class Contents_items extends StatelessWidget {
  const Contents_items({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,

  });
  final String title;
  final String subtitle;
  final String imagePath;

  // Add this line

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        width: 350,
        height: 80,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset( imagePath, height: 80,width: 80,),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.yellow[300],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child:
                      InkWell(
                        onTap: () {



                        },
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      )

                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
              ),


            ]
        ),
      ),
    );
  }
}
