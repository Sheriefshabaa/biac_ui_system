import 'package:biac/TBSA/patientdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';


class TBSAPage extends StatelessWidget {
  const TBSAPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:  SingleChildScrollView(
          child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text('Before utilizing this feature',
                    
                    
                        style: TextStyle(
                            fontSize: 27,
                            color: greencolor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Radio')),
                    SizedBox(height: 10,),

                        Text('please adhere to the following instructions for optimal results:',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Radio')),

                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• Maintain a consistent distance of \n \t approximately 30 to 50 cm when \n \t capturing all photos, ensuring the \n \t camera (cellphone) remains parallel \n \t to the wound bed.',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),    
                        Container(
                          
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• Capture photos in well-lit conditions.',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),  
                                                Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 10),
                          child: Text('• Avoid shaking the phone while taking \n \t photos.',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),    
  
                     Container(
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• For hand images:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Radio')),
                        ),  
                        Container(
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(40, 5, 10, 0),
                          child: Text("• Ensure the patient's hand is fully \n \t open.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),  
                  Container(
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(40, 5, 10, 10),
                          child: Text('• The image should only include one \n \t hand, with no other hands visible in \n \t the background.',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ), 
                        Container(
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• For Burn images:',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Radio')),
                        ),  
                        Container(
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(40, 5, 10, 0),
                          child: Text("• Capture only one image for each \n \t burned area of the body.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),  

                                         Container(
                                height: screenheight/20,
                                margin: EdgeInsets.fromLTRB(20.0,40.0, 20.0, 0.0),
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
                                    Radius.circular(50)
                                  )
                                ),
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) =>patientdata()));
                                      
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
            )
        )
      )
      
    );
  }
    dynamic get greencolor => HexColor("1EBD9D");

}