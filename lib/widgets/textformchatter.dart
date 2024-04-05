import 'package:flutter/material.dart';

class TextFormChatter extends StatelessWidget {
  const TextFormChatter({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure
  }): super(key: key);

  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
      child: Center(
        child: TextFormField(
          controller: controller,
          keyboardType: textInputType,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: text,
            suffixIcon: obscure ? Icon(Icons.remove_red_eye_outlined): null,
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(0),
            hintStyle: const TextStyle(
                height: 1,
                fontSize: 12,
              color: Colors.black45
            )
          ),
        ),
      ),
    );
  }
}
