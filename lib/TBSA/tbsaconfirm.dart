import 'package:biac/TBSA/credit.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
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
class tbsasubscribepage1 extends StatelessWidget {
 

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
                    height: 25,
                  ),
                   Row(
                     children: [
                     
                      
                      IconButton( 
                        iconSize: 35,
                        color: HexColor("#019874"),
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.arrow_back_ios_new_outlined),
                         onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                      }, ),
                      SizedBox(
                        width: screenwidth/2,
                      ),
                       
                       
                     ],
                   ),
                   SizedBox(
                    height: screenhieght/5,
                   ),
                  //  Container(
                  //   child: Image(image: AssetImage('assets/images/TCS.png')),
                  //  ),
                   
                   Column(
                    children: [
                    
                      
                   Container(
                    width: screenwidth / 1.9,
                    // height: 300,
                    child: Image(image: AssetImage('assets/images/medical.png'),fit: BoxFit.cover,),
                   ),
                   Container(
                    child: Image(image: AssetImage('assets/images/Welcome.png'),fit: BoxFit.cover,
                    width: screenwidth / 1.5,),
                   ),
                   SizedBox(height: screenhieght / 4.1,)

                    ],
                   ),
                  
                  
                  Container(
                    
                    width: double.infinity,
                    height: screenhieght/6.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color:Color.fromARGB(255, 230, 230, 230)),
                  margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          SizedBox(
                            height: 30,
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
                                                    
                                                    child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBarWithTBSA()));
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
                                  'Subscribe Now',
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
                ],
              ),
            ),
          ),
      )
    ;
  }
}

