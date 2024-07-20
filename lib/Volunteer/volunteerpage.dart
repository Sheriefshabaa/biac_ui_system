import 'package:biac/Volunteer/volunteeracting.dart';
import 'package:biac/caseDetails.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/drawer/volunteerdrawer.dart';
import 'package:biac/services/historyservice.dart';
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
class volunteerpage extends StatefulWidget {
  @override
  State<volunteerpage> createState() => _volunteerpageState();
}

class _volunteerpageState extends State<volunteerpage> {
  var emailController = TextEditingController();


  List<dynamic> user = userData;
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  String? validateEmail(String? email)
  {
    RegExp emailRegex = RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if(!isEmailValid)
    {
      return '            please enter valid email';
    }
    return null; 
  }

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
                          icon: Icon(Icons.menu_sharp,
                          size: 35,), 
                          onPressed: () =>scaffoldKey.currentState?.openDrawer() ,
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
                              SizedBox(height: 10,),
                              Container(
                                alignment: Alignment.center,
                                child: Text('Be an Active Member of Our Community!',
                                
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  // fontFamily: 'rubik',
                                  
                                  color: greencolor,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold
                                ),)
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              SizedBox(
                height: 30,)
                ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer( containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                //  SizedBox(
                //   child: InkWell(
                //     child: historyContainer(
                //       containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                //  SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                //  SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                //  SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteeracting()));
                //                   },
                //   ),
                // ),
                //               SizedBox(
                //                 height: 8,
                //               ),
                //               SizedBox(
                //                 height: 10.0,
                //               ),
                            ],
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
  dynamic get greencolor => HexColor("1EBD9D");

}
