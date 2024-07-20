import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class details extends StatelessWidget {
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
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.fromLTRB(10.0,45.0, 0.0, 0.0),
                    // #5CBAA7
                    width: 390,
                    child: Image(image: AssetImage('assets/images/icon_splach.png'),
                    color:HexColor("#5CBAA7"),
                    height: 70,
                    alignment: Alignment.topLeft,),
                   ),
                  Container(
                    height: 40,
                    width: 400,
                    color: Colors.white,
                    child: Text("DETAILS :",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight:FontWeight.bold 
                    ),
                    ),
                  ),
                  //Burn Severity Type :
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 80,
                    width: 400,
                    color: Colors.white,
                    child: Text("Burn Severity Type :",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#5CBAA7"),
                      fontSize: 20,
                      fontWeight:FontWeight.w500 
                    ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    color: HexColor("#C4C4C4"),
                    child: Text("Information about the severity type of the burn (e.g., first-degree, second-degree, third-degree)...........",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight:FontWeight.w500 
                    ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 80,
                    width: 400,
                    color: Colors.white,
                    child: Text("First Aid Instructions :",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: HexColor("#5CBAA7"),
                      fontSize: 20,
                      fontWeight:FontWeight.w500 
                    ),
                    ),
                  ),
                  Container(
                    height: 500,
                    width: 400,
                    color: HexColor("#C4C4C4"),
                    child: Text("Step-by-step instructions for providing immediate first aid for the burn injury.....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight:FontWeight.w500 
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
