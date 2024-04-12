
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text("Profile"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: (){},

          ),
        ),
        body:Container(
          padding: EdgeInsets.only(left:16,top: 25,right: 16),
          child: GestureDetector(
            onTap:() {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                SizedBox(height: 15,),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0,10)
                              )
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: Image.asset("assets/images/teddy_img.png", height: 80,width: 80,).image,
                                fit: BoxFit.cover
                            )
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 35,),
                buildTextField("Full name", "Damisola", Colors.black ),
                buildTextField("Phone Number", "+23408062951675", Colors.black),
                buildTextField("Email Address", "damisolataiwo@gmail.com", Colors.black),
                buildTextField("Date of birth", "1900",Colors.black),
                buildTextField("Country", "Nigeria", Colors.black, icon: Icons.keyboard_arrow_down),
                //buildTextField("Emergency Contact", "+2348062951675",Colors.blue, icon: Icons.call,),
                SizedBox(height: 20,),


              ],
            ),
          ),
        )
    );
  }

  Widget buildTextField(String labelText, String placeholder, Color color, {IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            labelStyle: TextStyle(
                color: color,
                fontSize: 24
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black54
            ),
            suffixIcon: icon != null ? Icon(icon,color: color,): null


        ),
      ),
    );
  }
}
