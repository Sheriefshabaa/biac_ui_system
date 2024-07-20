import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/bottomNavBarWithTBSA.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class tbsapay extends StatelessWidget {
 

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
                             Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
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
                      height: 10,
                    ),
                    
                     Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                      // #5CBAA7
                      width: 390,
                      height: 120,
                      child: Image(image: AssetImage('assets/images/doctors.png'),
                      height: 120,
                      alignment: Alignment.center,),
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
                            color: Color.fromARGB(255, 252, 252, 252),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30)
                              )
                            ),
                            width: double.infinity,
                            height: 420,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Image(image: AssetImage('assets/images/SuccessIcon.png'),),
                                Text("Payment Success!",
                                style: 
                                TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                            
                          ),
                          SizedBox(
                            height: 50,
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
                            color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30)
                              )
                            ),
                            width: double.infinity,
                            child: MaterialButton(
                              
                              onPressed: () {
                                     Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBarWithTBSA()));
                           
                              },
                              child: Container(
                                child: Text(
                                  'Back To Home',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 1, 152, 116),
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
