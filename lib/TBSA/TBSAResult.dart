import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/services/gettbsasevice.dart';
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
class TBSAResult extends StatelessWidget {
 
 String formattedNumber =''; // specify the number of decimal places you want

double number = tbsaData["first_dose_amount"] + tbsaData["first_dose_amount"] + tbsaData["first_dose_amount"];

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
              
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text("Patient Assessment\n Results",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 32,
                     color: greencolor,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Radio' )),
                     Image(image: AssetImage('assets/images/doctorgirl.png'),width: screenwidth/4,)
                 ],
               ),

                SizedBox(
                  height: screenheight/23,
                ),
         
                 SizedBox(
                  height: 20,
                 ),
                       SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: screenheight,
                            
                            child: Column(
                              children: [
                              
                            
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Name :  ${tbsaData["patient_name"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Age :  ${tbsaData["age"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Weight :  ${tbsaData["weight"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            child: Text("TBSA : ${tbsaData["tbsa"]} ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Total Fluid : ${number} ",
                            //  ${tbsaData["first_dose_amount"]} + ${tbsaData["first_dose_amount"]} + ${tbsaData["first_dose_amount"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          Container(

                          
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• fluid (First 8 Hours) : ${tbsaData["first_dose_amount"]}',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),
                        Container(
                          
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• fluid (Second 8 Hours) : ${tbsaData["second_dose_amount"]}',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),
                        Container(
                          
                      alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 5, 10, 0),
                          child: Text('• fluid (Third 8 Hours) : ${tbsaData["third_dose_amount"]}',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Radio')),
                        ),


                          SizedBox(height: 30,),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Survival probability : ${tbsaData["survival_probability"]}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                            ],),
                          ),
                        ],
                      ),
                    ),
              

                  SizedBox(
                    height: screenheight/4,
                  ),

                        //  Container(
                        //         height: screenheight/15,
                        //         margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                        //         decoration: BoxDecoration(
                        //            boxShadow: [
                        //           BoxShadow(
                        //             color: Colors.grey.withOpacity(0.5),
                        //             spreadRadius: 4,
                        //             blurRadius: 10,
                        //             offset: Offset(0, 3), // changes position of shadow
                        //           ),
                        //         ],
                        //         color: greencolor,
                        //           borderRadius: BorderRadius.all(
                        //             Radius.circular(10)
                        //           )
                        //         ),
                        //         width: double.infinity,
                        //         child: MaterialButton(
                                  
                        //           onPressed: () {
                        //               // Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage_withoutlogin()));
                                      
                        //           },
                        //           child: Container(
                        //             child: Text(
                        //               'Download PDF',
                        //               style: TextStyle(
                        //                 fontSize: 20,
                        //                 color: Color.fromARGB(255, 255, 255, 255),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                               
                     
                 
                ],
           ),
         ),

                    ),
      )
    ;
  }
    dynamic get greencolor => HexColor("1EBD9D");

}
