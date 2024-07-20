import 'dart:ui';
import 'package:biac/Registration/login.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class registration extends StatelessWidget {
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
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(20.0,20.0, 20.0, 20.0),
                      // #5CBAA7
                      width: 390,
                      height: 160,
                      child: Image(image: AssetImage('assets/images/doctors.png'),
                      height: 150,
                      alignment: Alignment.center,),
                     ),
                      Container(
                        width: 250,
                        height: 40,
                        child: Text(
                          'BIAC ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                               boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
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
                                Navigator.push(context,MaterialPageRoute(builder: (context) =>SignUp()));
                                },
                              child: Container(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                               boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
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
                                },
                              child: Container(
                                child: Text(
                                  'Log In',
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
