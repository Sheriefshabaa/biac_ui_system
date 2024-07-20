import 'dart:async';

import 'package:biac/History.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/services/historyservice.dart';
import 'package:biac/user/editProfile.dart';
import 'package:biac/homePages/userpagewithoutlogin.dart';
import 'package:biac/passwordmanager.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable, camel_case_types
class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profile();
}

class _profile extends State<profile> {


  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 

    return 
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: screenheight/11,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                  iconSize: 30,
                  onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => bottomNavBar()));
                
                           }
                , icon: Icon(Icons.arrow_back_ios)),
              ),),
              SizedBox(height: screenheight / 90,),
              Container(
                alignment: Alignment.center,
                height: screenheight / 4 ,
                width: screenwidth / 1.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.white,greencolor],begin: Alignment.topCenter,end: Alignment.bottomCenter),
                  boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                          ),
                child: Container(
                  width: screenwidth / 4,
                  height: screenheight / 9,
                                
                                child: CircleAvatar(backgroundImage: AssetImage("assets/images/profileempty.jpg"))
                                ),
                ),
                SizedBox(height: 60,),
                Center(
                  child: Column(
                    children: [
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: .1))
                          ),
                          height: 45,
                          width: screenwidth /1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/editprofile.png')),
                              Text('Edit Profile',
                              style: TextStyle(
                                fontSize: 24
                              ),),
                              Container(height: 1,width: 120,),
                              Image(image: AssetImage('assets/images/Header.png')),
                              
                            ],
                          ),
                        
                        ),
                        onTap: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>editProfile()));
                          
                        },
                      ),
                     SizedBox(height: 15,),
                     
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: .1))
                          ),
                          height: 45,
                          width: screenwidth /1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/history.png'),),
                              Text('History',
                              style: TextStyle(
                                fontSize: 24
                              ),),
                              Container(height: 1,width: 160,),
                              Image(image: AssetImage('assets/images/Header.png')),
                              
                            ],
                          ),
                        
                        ),
                         onTap: () async{
                    
                          await  fetchUsearData();
                          // await fetchUsearData(1);
                          Navigator.push(context,MaterialPageRoute(builder: (context) => History()));
                       },
                      ),
                     SizedBox(height: 15,),
                     
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: .1))
                          ),
                          height: 45,
                          width: screenwidth /1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/password.png')),
                              Text('Password Manager',
                              style: TextStyle(
                                fontSize: 24
                              ),),
                              Container(height: 1,width: 17,),
                              Image(image: AssetImage('assets/images/Header.png')),
                              
                            ],
                          ),
                        
                        ),
                        onTap: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>passwordmanager()));
                          
                        },
                      ),
                     SizedBox(height: 15,),
          
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom:BorderSide(width: .1))
                          ),
                          height: 45,
                          width: screenwidth /1.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('assets/images/logoutprofile.png')),
                              Text('Logout',
                              style: TextStyle(
                                fontSize: 24
                              ),),
                              Container(height: 1,width: 155,),
                              Image(image: AssetImage('assets/images/Header.png')),
                              
                            ],
                          ),
                        
                        ),
                        onTap: () {
                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => Center(
                                        child: Column(
                                              mainAxisAlignment :MainAxisAlignment.center,
                                                        
                                        
                                          children: [
                                            Container(
                                                    child: Text("Are you sure to logout?",
                                                    style: TextStyle(
                                                      fontSize:18,
                                                      fontWeight: FontWeight.w700
                                                    ),)
                                                  ),
                                            // Image(image: AssetImage("assets/images/logout.jpg"),),
                                                  
                                                  
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
                                                    
                                                    child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage_withoutlogin()));
                                                    },
                                                    child:Container(
                                                      child: Text(
                                                        'Logout',
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 255, 255, 255),
                                                        ),
                                                      ),
                                                    ),),
                                                  )
                                        ],),
                                      ));
                        },
                      ),
                     SizedBox(height: 15,),
                    ],
                  ),
                ),

                SizedBox(height: 
                screenheight / 3.1,),


              //  Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //               children: [
              //                 Container(
              //                   decoration: BoxDecoration(
              //                      boxShadow: [
              //                     BoxShadow(
              //                       color: Colors.grey.withOpacity(0.5),
              //                       spreadRadius: 5,
              //                       blurRadius: 7,
              //                       offset: Offset(0, 3), // changes position of shadow
              //                     ),
              //                   ],
              //                   color: greencolor,
              //                     borderRadius: BorderRadius.all(
              //                       Radius.circular(30)
              //                     )
              //                   ),
              //                   width: screenwidth / 2.3,
              //                   child: MaterialButton(
              //                     onPressed: () {
              //                     Navigator.push(context,MaterialPageRoute(builder: (context) =>editProfile()));
              //                     },
              //                     child: Container(
              //                       child: Text(
              //                         'Edit Profile',
              //                         style: TextStyle(
              //                           color: Color.fromARGB(255, 255, 255, 255),
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //                 Container(
              //                   decoration: BoxDecoration(
              //                      boxShadow: [
              //                     BoxShadow(
              //                       color: Colors.grey.withOpacity(0.5),
              //                       spreadRadius: 5,
              //                       blurRadius: 7,
              //                       offset: Offset(0, 3), // changes position of shadow
              //                     ),
              //                   ],
              //                   color: greencolor,
              //                     borderRadius: BorderRadius.all(
              //                       Radius.circular(30)
              //                     )
              //                   ),
              //                   width: screenwidth / 2.3,

              //                   child: MaterialButton(
              //                     onPressed: () {
              //                     Navigator.push(context,MaterialPageRoute(builder: (context) =>history()));
              //                     },
              //                     child: Container(
              //                       child: Text(
              //                         'History',
              //                         style: TextStyle(
              //                           color: Color.fromARGB(255, 255, 255, 255),
              //                           fontSize: 16,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),

 



        ])
        ,
        
        )
        );    
  }  
  
   dynamic get greencolor => HexColor("1EBD9D");

}
