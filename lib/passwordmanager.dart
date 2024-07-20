import 'package:biac/Registration/login.dart';
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
// ignore: must_be_immutable
class passwordmanager extends StatefulWidget {
 

  @override
  State<passwordmanager> createState() => _passwordmanagerState();
}

class _passwordmanagerState extends State<passwordmanager> {
  
  var passwordController = TextEditingController();
  var passwordController1 = TextEditingController();
  var passwordController2 = TextEditingController();

  bool secureText = true;
  bool secureText1 = true;
  bool secureText2 = true;



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
                    height: 10,
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
                      SizedBox(
                        width: screenwidth/2,
                      ),

                      Container(
                        alignment: Alignment.topLeft,
                         child: Image(image: AssetImage('assets/images/logo2.png'),
                         width: screenwidth /2.8,
                        height: screenhieght/8,
                        color:Color.fromARGB(255, 1, 152, 116) ,),
                       ),
                       
                       
                     ],
                   ),
                   SizedBox(
                    height: 45,
                   ),
                  //  Container(
                  //   child: Image(image: AssetImage('assets/images/TCS.png')),
                  //  ),
                   
                   Column(
                    children: [
                    
                      
                   SizedBox(height: screenhieght / 15,)

                    ],
                   ),
                  
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                                    
                      SizedBox(
                        height: 30,
                      ),
                      passwordContainer(passwordController: passwordController, secureText: secureText, iconButton: IconButton(onPressed: (){
                                        setState(() {
                                          secureText = !secureText;
                                        });
                                      },
                                      icon:Icon(!secureText ? Icons.visibility_off : Icons.remove_red_eye),
                                    ),
                                    lable: 'Current Password',),
                                    SizedBox(
                                    height: 15,
                                  ),Container(
                                    height: 35,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.fromLTRB(00.0,0.0, 18.0, 0.0),
                                    child: TextButton(
                                    onPressed: (){
                                     Navigator.push(context,MaterialPageRoute(builder: (context) =>forgotPassword()));
                                  }, 
                                  child: Text('Forgot Password?',
                                  style: TextStyle(color: Color.fromARGB(255, 1, 152, 116),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                    // fontSize: 14.0,
                                    // fontWeight: FontWeight.w400,
                                  ),
                                  ),
                                  ),
                              )
                              ,
                              SizedBox(
                                height: 35,
                              ),
                      passwordContainer(passwordController: passwordController1, secureText: secureText1, iconButton: IconButton(onPressed: (){
                                        setState(() {
                                          secureText1 = !secureText1;
                                        });
                                      },
                                      icon:Icon(!secureText1 ? Icons.visibility_off : Icons.remove_red_eye),
                                    ),
                                    lable: 'New Password',),
                                    SizedBox(
                        height: 30,
                      ),
                      passwordContainer(passwordController: passwordController2, secureText: secureText2, iconButton: IconButton(onPressed: (){
                                        setState(() {
                                          secureText2 = !secureText2;
                                        });
                                      },
                                      icon:Icon(!secureText2 ? Icons.visibility_off : Icons.remove_red_eye),
                                    ),
                                    lable: 'Confirm New Password',),
                      SizedBox(
                        height: 100,
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
                            Radius.circular(20)
                          )
                        ),
                        width: double.infinity,
                        child: MaterialButton(
                          
                          onPressed: () {
                              
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>LoginScreen()));
                                                          },
                          child: Container(
                            child: Text(
                              'Change Password',
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

