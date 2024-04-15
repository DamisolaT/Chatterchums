
import 'package:chatterchums/settings_screens_widgets/addressbtn.dart';
import 'package:chatterchums/settings_screens_widgets/addresstextform.dart';
import 'package:chatterchums/settings_screens_widgets/donebtn.dart';
import 'package:chatterchums/settings_screens_widgets/textformchangepassword.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  AddressScreen({super.key});
  final TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back),),
          title: Text(
              "Address",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black
              )
          ),

        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Fill in your address details"),
                  SizedBox(height: 20,),
                  Text(
                    "Home address",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  SizedBox(height: 10,),
                 AddressTextForm(
                      controller: textEditingController ,

                      textInputType: TextInputType.text,
                      ),
                  SizedBox(height: 10,),
                  Text(
                    "City/State",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  AddressTextForm(
                      controller:textEditingController ,
                      textInputType: TextInputType.text,
                     ),
                  SizedBox(height: 10,),
                  Text(
                    "Closest bus-stop",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  AddressTextForm(
                    controller:textEditingController ,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "Country",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                  AddressTextForm(
                    controller:textEditingController ,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: 100,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: AddressButton()
                  )


                ],
              ),
            ),
          ),
        )

    );

  }
}
