import 'dart:ui';
import 'package:biac/Password/ResetPassword.dart';
import 'package:biac/Registration/login.dart';
import 'package:biac/otp/textotp.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class forgotPassword extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                             Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
                          },
                        ),
                        Container(
                          width: 330,
                          child: Image(
                            image: AssetImage('assets/images/logo2.png'),
                            color:Colors.white,
                            height: 40,
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
                      child: Text("Forgot Password",
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
                      child: Image(image: AssetImage('assets/images/noun-lock.png'),
                      height: 150,
                      alignment: Alignment.center,),
                     ),
                      Container(
                        width: 250,
                        height: 40,
                        child: Text(
                          'Enter your email we\’ll send you a link to get back into  your account ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      emailContainer(emailController: emailController,),
                    
                      SizedBox(
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
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>TextOTP()));
                                
                                  },
                                child: Container(
                                  child: Text(
                                    'Reset Your Password',
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
