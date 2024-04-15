import 'package:flutter/material.dart';

class AddressTextForm extends StatelessWidget {
  const AddressTextForm({
    Key? key,
    required this.controller,

    required this.textInputType,

  }): super(key: key);

  final TextEditingController controller;

  final TextInputType textInputType;


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

          decoration: InputDecoration(

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
