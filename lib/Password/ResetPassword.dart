import 'dart:ui';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/Registration/login.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class ResetPassword extends StatefulWidget {
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var passwordController1 = TextEditingController();

  var passwordController2 = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool secureText1 = true;
  bool secureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Container(
            height: 900,
           decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover),
          ),
            child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                      SizedBox(height: 80,),                        
                      IconButton(
                          iconSize: 40,
                          icon: const Icon(Icons.arrow_back_ios_new_outlined),
                          onPressed: () {
                             Navigator.push(context,MaterialPageRoute(builder: (context) =>forgotPassword()));
                          },
                        ),
                        Container(
                          width: 330,
                          child: Image(
                            image: AssetImage('assets/images/icon_splach.png'),
                            color:Colors.white,
                            height: 60,
                            alignment: Alignment.centerRight,),
                        ),
                    ],)
                    ,
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 390,
                      height: 40,
                      child: Text("Reset Your Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                     Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                      // #5CBAA7
                      width: 390,
                      height: 160,
                      child: Image(image: AssetImage('assets/images/resetpass.png'),
                      height: 150,
                      alignment: Alignment.center,),
                     ),
                      Container(
                        width: 250,
                        height: 40,
                        child: Text(
                          'Enter your New Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ),
                      
                      SizedBox(
                        height: 20,
                      ),
                      passwordContainer(passwordController: passwordController1, secureText: secureText1, iconButton: IconButton(onPressed: (){
                                      setState(() {
                                        secureText1 = !secureText1;
                                      });
                                    },
                                    icon:Icon(!secureText1 ? Icons.visibility_off : Icons.remove_red_eye),
                                  ), lable:'Enter new password')
                      ,SizedBox(
                        height: 20,
                      ),
                     passwordContainer(passwordController: passwordController2, secureText: secureText2, iconButton: IconButton(onPressed: (){
                                      setState(() {
                                        secureText2 = !secureText2;
                                      });
                                    },
                                    icon:Icon(!secureText2 ? Icons.visibility_off : Icons.remove_red_eye),
                                  ), lable:'Confirm your password')
                      ,       SizedBox(
                        height: 20,
                      ),
                      Container(
                              margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                              decoration: BoxDecoration(
                                 boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              width: double.infinity,
                              child: MaterialButton(
                                
                                onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
                                  
                                  // if (passwordController1==passwordController2){
                                  // Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
                                  // }
                                  // else{
                                  //   Row(
                                  //     children: [
                                  //       SizedBox(width: 48,),
                                  //       Expanded(
                                  //         child: Column(
                                  //           crossAxisAlignment: CrossAxisAlignment.start,
                                  //           children: [
                                  //             const Text("Oh snap!",
                                  //             style: 
                                  //             TextStyle(fontSize: 18,color: Colors.white),),
                                  //              const Text("Wrong Password",
                                  //             style: 
                                  //             TextStyle(fontSize: 12,color: Colors.white),
                                  //             maxLines: 2,
                                  //             overflow: TextOverflow.ellipsis,),
                                             

                                  //       ],))
                                  //     ],
                                  //   );
                                  // }
                                  },
                                child: Container(
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                  ],
                ),
              ),
          ),
          ),      
      )
    ;
  }
}
