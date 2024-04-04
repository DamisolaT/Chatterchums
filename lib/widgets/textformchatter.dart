import 'package:flutter/material.dart';

class TextFormChatter extends StatelessWidget {
  const TextFormChatter({super.key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure});

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 7
          )
        ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        obscureText: true,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(Icons.remove_red_eye_outlined),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
          hintStyle: TextStyle(
            height: 1
          )
        ),
      ),
    );
  }
}
