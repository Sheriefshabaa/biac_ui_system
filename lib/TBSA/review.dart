import 'package:biac/TBSA/TBSAResult.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class review extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SingleChildScrollView(
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                     },
                   ),
                   
               ],)
               ,
               SizedBox(
                 height: screenheight/50,
               ),
               Text("Review and Confirm\n Images",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 32,
                 color: greencolor,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Radio' )),

                SizedBox(
                  height: screenheight/23,
                ),
                 Column(
                   children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image(image: AssetImage('assets/images/capture.png'),width: 150,),
                         
                         Image(image: AssetImage('assets/images/capture.png'),width: 150,),
                       ],
                     ),
                     SizedBox(height: 15,),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Image(image: AssetImage('assets/images/capture.png'),width: 150,),
                         
                         Image(image: AssetImage('assets/images/capture.png'),width: 150,),
                       ],
                     ),
                   ],
                 ),

                 SizedBox(
                  height: 20,
                 ),


                  SizedBox(
                    height: screenheight/4,
                  ),
                            
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                                    height: screenheight/15,
                                    
                                    width: screenwidth/2.5,
                                    margin: EdgeInsets.fromLTRB(20.0,0.0, 0, 0.0),
                                    decoration: BoxDecoration(
                                       boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                    color: greencolor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                    child: MaterialButton(
                                      
                                      onPressed: () {
                                          // Navigator.push(context,MaterialPageRoute(builder: (context) =>captureBurn()));
                                          
                                      },
                                      child: Container(
                                        child: Text(
                                          'Retake\n Image',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                         Container(
                                    height: screenheight/15,
                                    width: screenwidth/2.5,
                                    margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                    decoration: BoxDecoration(
                                       boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                    color: greencolor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                    child: MaterialButton(
                                      
                                      onPressed: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context) =>TBSAResult()));
                                          
                                      },
                                      child: Container(
                                        child: Text(
                                          'Confirm And\n Proceed',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                     
                     ],
                   ),
             
                     
                 
                ],
           ),
         ),

                    ),
      )
    ;
  }
    dynamic get greencolor => HexColor("1EBD9D");

}
