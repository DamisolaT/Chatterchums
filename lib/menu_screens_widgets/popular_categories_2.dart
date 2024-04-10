
import 'package:flutter/material.dart';

class PopularCategories2 extends StatelessWidget {
  const PopularCategories2({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/abcc_img.png", height: 50, width: 50),
            SizedBox(height: 8), // Add some space between image and text
            Text(
              "Puzzles",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow[700],
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );

  }
}
