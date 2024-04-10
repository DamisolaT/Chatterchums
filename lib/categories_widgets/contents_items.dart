
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 90,
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
                    height: 20,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.yellow[300],
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child:
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
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
    );
  }
}
