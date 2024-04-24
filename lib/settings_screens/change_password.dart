
import 'package:chatterchums/settings_screens/account_settings.dart';
import 'package:chatterchums/settings_screens/settings_page.dart';
import 'package:chatterchums/settings_screens_widgets/donebtn.dart';
import 'package:chatterchums/settings_screens_widgets/textformchangepassword.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
   ChangePassword({super.key});
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
                appBar: AppBar(
                leading: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AccountSettingsPage()
                  ));
                },
                    icon: Icon(Icons.arrow_back),),
                       title: Text("Change password",
                       style: TextStyle(
                       fontSize: 22,
                       color: Colors.black
                       )
                    ),
                  actions: [
                    IconButton(
                        onPressed: (){
                          },
                        icon: Icon(Icons.cancel))
                  ],

                ),
           body: SingleChildScrollView(
             child: SafeArea(
               child: Container(
                 width: double.infinity,
                 padding: EdgeInsets.all(15.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20,),
                     Text(
                       "Password",
                       style: TextStyle(
                           fontSize: 20,
                           color: Colors.black
                       ),
                     ),
                     SizedBox(height: 10,),
                     TextFormChangePassword(
                         controller: passwordController ,
                         text:"*******",
                         textInputType: TextInputType.text,
                         obscure: true),
                     SizedBox(height: 20,),
                     Text(
                       "Re-enter password",
                       style: TextStyle(
                           fontSize: 20,
                           color: Colors.black
                       ),
                     ),
                     TextFormChangePassword(
                         controller: passwordController ,
                         text:"*******",
                         textInputType: TextInputType.text,
                         obscure: true),
                     SizedBox(height: 40,),
                     Padding(
                       padding: const EdgeInsets.only(left: 50, right: 20),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Row(

                             children: [
                               Image.asset("assets/images/cancel_img.png",),
                               SizedBox(width: 20,),
                               Text("8 characters minimum"),
                               SizedBox(height: 10,),
                             ],
                           ),
                           SizedBox(height: 20,),
                           Row(

                             children: [
                               Image.asset("assets/images/correct_img.png",),
                               SizedBox(width: 20,),
                               Text("Must contain one number"),
                               SizedBox(height: 10,),
                             ],
                           ),
                           SizedBox(height: 20,),
                           Row(

                             children: [
                               Image.asset("assets/images/correct_img.png",),
                               SizedBox(width: 20,),
                               Text("One uppercase"),
                               SizedBox(height: 10,),
                             ],
                           )
                         ],
                       ),
                     ),
                     SizedBox(height: 50,),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: SizedBox(
                         height: 60,
                         width: 300,
                         child: TextFormField(
                           textAlign: TextAlign.center,
                           decoration: InputDecoration(
                               hintText: "Confirm new password",
                               hintStyle: TextStyle(
                                 fontSize: 15,
                                 color: Colors.deepPurple[100],
                               ),
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.circular(16),
                                   borderSide: BorderSide(color: Colors.deepPurple, width: 2)
                               ),
                               enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(10),
                                 borderSide: BorderSide(color: Colors.deepPurple,width: 2), // Set the border color
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(16),
                                 borderSide: BorderSide(color: Colors.deepPurple, width: 2), // Set the border color
                               ),

                               contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
                               fillColor: Colors.white,
                               filled: true
                           ),
                         ),
                       ),

                     ),
                     SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.only(left: 20,right: 20),
                       child: DoneButton(),
                     )


                   ],
                 ),
               ),
             ),
           )

    );

  }
}
