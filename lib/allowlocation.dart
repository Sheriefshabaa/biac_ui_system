import 'package:biac/TBSA/credit.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// import 'package:location/location.dart';

// ignore: must_be_immutable
class allowlocation extends StatefulWidget {
 

  @override
  State<allowlocation> createState() => _allowlocationState();
}

class _allowlocationState extends State<allowlocation> {

  @override
  Widget build(BuildContext context) {
    final screenhieght = MediaQuery.of(context).size.height; 
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
                     
                      
                      IconButton( 
                        iconSize: 35,
                        color: HexColor("#019874"),
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.arrow_back_ios_new_outlined),
                         onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>user_page2()));
                      }, ),
                       
                     ],
                   ),
                   SizedBox(
                    height: 120,
                   ),
                  //  Container(
                  //   child: Image(image: AssetImage('assets/images/TCS.png')),
                  //  ),
                   
                   Column(
                    children: [
                    
                      
                   Container(
                    width: 160,
                    // height: 300,
                    child: Image(image: AssetImage('assets/images/location.png'),fit: BoxFit.cover,),
                   ),
                   SizedBox(height: 20,),
                   Text('What is Your Location? ',
                   style: TextStyle(
                    fontSize: 30,
                   ),),
                   
                   SizedBox(height: 20,),
                   Text('We need to know your location in order to Suggest nearby services',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                   ),),


                    ],
                   ),
                  
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                                    
                      SizedBox(
                        height: 40,
                      ),
                      
                      Container(
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
                        color: Color.fromARGB(255, 1, 152, 116),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15)
                          )
                        ),
                        width: double.infinity,
                        child: MaterialButton(
                          
                          onPressed: () {
                              // Navigator.push(context,MaterialPageRoute(builder: (context) =>credit()));
                                
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Center(
                                    child: Column(
                                          mainAxisAlignment :MainAxisAlignment.center,
                                
                                    
                                      children: [
                                              Container(
                                                child: Image(image: AssetImage('assets/images/OBIAC.png'),
                                                width: 350,
                                                height: 150,),
                                              ),
                                              
                                              Container(
                                                child: Image(image: AssetImage('assets/images/tbsacalc.png'),
                                                width: 350,
                                                height: 150,),
                                              ),
                                              SizedBox(
                                                height: 70,
                                              ),
                                              Container(
                                                child: Text("30\$",
                                                style: TextStyle(
                                                  fontSize:18,
                                                  fontWeight: FontWeight.w700
                                                ),)
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
                                                color: Color.fromARGB(255, 1, 152, 116),
                                                  borderRadius: BorderRadius.all(
                                                    Radius.circular(30)
                                                  )
                                                ),
                                                width: double.infinity,
                                                
                                                child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>credit()));
                                                },
                                                child:Container(
                                                  child: Text(
                                                    'Pay Now',
                                                    style: TextStyle(
                                                      color: Color.fromARGB(255, 255, 255, 255),
                                                    ),
                                                  ),
                                                ),),
                                              )
                                    ],),
                                  ));
                          },
                          child: Container(
                            child: Text(
                              'Allow Location Access',
                              style: TextStyle(
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
}

