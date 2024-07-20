import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/homePages/userpagewithoutlogin.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class getStarted extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body:  SingleChildScrollView(
          child: Center(
              child: Container(
                height: screenheight,
                width: screenwidth,

                child: SingleChildScrollView(
                  child: Column(
                    
                    children: [
                      SizedBox(
                        height: screenheight/15,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                          SizedBox(width: screenwidth / 19,),
                          
                  
                          Container(
                            alignment: Alignment.topLeft,
                             child: Image(image: AssetImage('assets/images/getstarted.jpg'),
                             width: screenwidth / 3 ,
                            height: screenheight / 7.5,
                             ),
                           ),
                           
                           Container(
                            alignment: Alignment.topLeft,
                             child: Image(image: AssetImage('assets/images/logo2.png'),
                             color: greencolor,
                             width: screenwidth / 2,
                            height: screenheight / 5,),
                           ),
                         ],
                       ),
                       SizedBox(
                        height: screenheight / 23,
                       ),
                  
                      
                      Container(
                        
                        width: screenwidth,
                        height: screenheight / 1.4,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 210, 210, 210).withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 10,

                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          color:Color.fromARGB(255, 255, 255, 255)),
                      margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: screenheight / 12,
                              ),
                              
                               Container(
                                      child: Text(" Burn Assessment App!",
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold
                                      ),),
                                    ),
                              SizedBox(
                                height: screenheight / 25,
                              ),
                              Container(
                                  margin: EdgeInsets.fromLTRB(20.0,0.0, 0.0, 0.0),


                                 child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  
                                   children: [
                                     Text("• Accurate burn detection and \n \t severity assessment.",
                                     textAlign: TextAlign.start,
                                     style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400
                                     ),
                                          ),

                                          SizedBox(height: 10,),
                                          Text("• Step-by-step first aid instructions.",
                                          textAlign: TextAlign.start,
                                        
                                     style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,)
                                          ),
                                          
                                          SizedBox(height: 10,),
                                          Text("• Instant access to nearby hospitals \n \t for emergency care.",
                                     textAlign: TextAlign.start,
                                     style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,)
                                          ),

                                          SizedBox(height: 10,),
                                          Text("• Helpful medical tips for burn  \n \t injuries.",
                                     textAlign: TextAlign.start,
                                     style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,)
                                          ),
                                   ],
                                 ),
                              ),
                              SizedBox(
                                height: screenheight / 12,
                              ),
                              Container(
                                height: screenheight/18,
                                margin: EdgeInsets.fromLTRB(25.0,0.0, 25.0, 0.0),
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
                                    Radius.circular(30)
                                  )
                                ),
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage_withoutlogin()));
                                      
                                  },
                                  child: Container(
                                    child: Text(
                                      'GET STARTED NOW!',
                                      style: TextStyle(
                                        fontSize: 22,
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
            ),
          ),
      )
    ;
  }
      dynamic get greencolor => HexColor("1EBD9D");

}
