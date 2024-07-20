import 'dart:ui';

import 'package:biac/Volunteer/volunteerpage.dart';
import 'package:biac/caseDetails.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/drawer/volunteerdrawer.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/historyContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class volunteeracting extends StatefulWidget {
  @override
  State<volunteeracting> createState() => _volunteeractingState();
}

class _volunteeractingState extends State<volunteeracting> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();


  bool secureText = true;

 var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 
    return Scaffold(
      key: scaffoldKey,
      drawer: volunteerdrawer(),
      body:  SingleChildScrollView(
          child: Center(
              child: Container(color: greencolor,
                child: Column(
                  
                  
                  children: [
                     Container(
                      color: greencolor,
                
                      alignment: Alignment.topLeft,
                      height: 100,
                      child: Container(
                      margin: EdgeInsets.fromLTRB(0.0,35.0, 0.0, 0.0),
                
                        child: IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.arrow_back_ios_new_outlined,
                          size: 35,), 
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteerpage()));

                          } ,
                        ),
                      ),
                     ),
                    SingleChildScrollView(
                     child: Container(
                      width: screenwidth,
                        height: screenheight/1.1,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color:Color.fromARGB(255, 255, 255, 255)),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(image: AssetImage('assets/images/photo.jpg'),width: 180,height: 170,),
                                  Image(image: AssetImage('assets/images/photo.jpg'),width: 180,)
                                ],
                              )
                              ,
                              Text('Model is Result',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight:FontWeight.bold,
                                fontSize: 24 
                              ),),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                
                                children: [
                                  Text('Model is Result',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight:FontWeight.w700,
                                fontSize: 24 
                              ),),Text('2nd degree',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight:FontWeight.w400,
                                fontSize: 24 
                              ),),
                                ],
                              ),


                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                
                                children: [
                                  Text('Accuracy of Burn Degree',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight:FontWeight.w700,
                                fontSize: 24 
                              ),),Text('80%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight:FontWeight.w400,
                                fontSize: 24 
                              ),),
                                ],
                              ),
                              SizedBox(height: 25,),

                              Container(
                                      width: screenwidth,
                              height: screenheight / 1.85,
                              decoration: BoxDecoration(
                                boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                 color:Color.fromARGB(255, 230, 230, 230)),
                                  margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                                     child: Center(
                                          child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                                SizedBox(height: 25,),
                                                Text('Does the burn degree is correct?',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                  fontWeight:FontWeight.w500,
                                                  fontSize: 24 
                                                  ),),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: 100,
                                                        height: 35,
                                                        
                                                        decoration: BoxDecoration(
                                                          
                                                          boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset: Offset(0, 3), // changes position of shadow
                                                          ),
                                                        ],
                                                        color: Color.fromARGB(255, 1, 152, 116),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(30)
                                                          )
                                                        ),
                                                        child: MaterialButton(
                                                          onPressed: () {
                                                            Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                                                            
                                                          },
                                                          child: Container(
                                                            child: Text(
                                                              'Yes',
                                                              style: TextStyle(
                                                                color: Color.fromARGB(255, 255, 255, 255),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 100,
                                                        height: 35,
                                                        
                                                        decoration: BoxDecoration(
                                                          
                                                          boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            spreadRadius: 5,
                                                            blurRadius: 7,
                                                            offset: Offset(0, 3), // changes position of shadow
                                                          ),
                                                        ],
                                                        color: Color.fromARGB(255, 255, 255, 255),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(30)
                                                          )
                                                        ),
                                                        child: MaterialButton(
                                                          onPressed: () {
                                                            Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                                                            
                                                          },
                                                          child: Container(
                                                            child: Text(
                                                              'No',
                                                              style: TextStyle(
                                                                color: Color.fromARGB(255, 0, 0, 0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )

                                                    ],
                                                  )
                                                  
                                              ,
                                              SizedBox(height: 250,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Container(
                                            width: 170,
                                            height: screenheight / 15,
                                            decoration: BoxDecoration(
                                              color: greencolor,
                                                  boxShadow: [
                                                          BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 3,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 3), // changes position of shadow
                                                ),
                                              ],
                                                borderRadius: BorderRadius.all(Radius.circular(90)
                                                ),
                                                ),
                                                
                                                child:Row(
                                                  children: [
                                                    Container(width: 55,height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                          
                                                                  borderRadius: BorderRadius.all(Radius.circular(90)
                                                                  ),
                                                                  ),
                                                                child: Icon(Icons.arrow_back_ios_new)
                                                                
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.all(5),
                                                      child: Text(

                                                      'Previous \nQuestion',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                      ),
                                                    ),
                                                    
                                                  ],
                                      ),),
                                      Container(
                                            width: 170,
                                            height: screenheight / 15,
                                            decoration: BoxDecoration(
                                              color: greencolor,
                                                  boxShadow: [
                                                          BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 3,
                                                  blurRadius: 10,
                                                  offset: Offset(0, 3), // changes position of shadow
                                                ),
                                              ],
                                                borderRadius: BorderRadius.all(Radius.circular(90)
                                                ),
                                                ),
                                                
                                                child:Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 1,
                                                      width: 10,
                                                    ),
                                                    
                                                    
                                                    Container(
                                                      margin: EdgeInsets.all(5),
                                                      child: Text('Next \nQuestion',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w500,
                                                      ),
                                                      ),
                                                    ),
                                                    
                                                    Container(width: 55,height: 55,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                          
                                                                  borderRadius: BorderRadius.all(Radius.circular(90)
                                                                  ),
                                                                  ),
                                                                child: Icon(Icons.arrow_forward_ios_outlined)
                                                                
                                                    ),
                                                    
                                                  ],
                                      ),)
                                                ],
                                              )    
                              
                            ]),
                        )
                          )

                            ]
                          ),),
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
  dynamic get greencolor => HexColor("1EBD9D");

}
