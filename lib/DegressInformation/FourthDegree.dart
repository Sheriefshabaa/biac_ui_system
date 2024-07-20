import 'package:biac/homePages/user_page2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class FourthDegree extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
          child: Center(
              child: Column(
                children: [
                  Container(
                    height: 115,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                                width: 50,
                                height: 40,
                                alignment: Alignment.topLeft,
                                child: IconButton( 
                                  iconSize: 35,
                                  color: const Color.fromARGB(255, 36, 34, 34),
                                  highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                                  icon: Icon(Icons.arrow_back_ios_new_outlined), 
                                  onPressed: () 
                                  {
                                    Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage2()));
                                    }, ),
                              ),
                              Container(
                                width: 80,
                                height: 100,
                                  margin: EdgeInsets.fromLTRB(260.10,10.0, 0.0, 0.0),
                                child: Image(image: AssetImage("assets/images/icon.png"),fit: BoxFit.cover,)
                              ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 400,
                    color: Colors.white,
                    child: Text("Fourth Degree Burn :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight:FontWeight.bold 
                    ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  //Burn Severity Type :
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 700,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/Degrees_background.jpg')),
                          boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(70),
                                topLeft: Radius.circular(70),
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
