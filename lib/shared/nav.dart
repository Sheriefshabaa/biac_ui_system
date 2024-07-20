import 'dart:async';

import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable, camel_case_types
class nav extends StatelessWidget {
nav({
  required this.text,
  required this.f,
  required this.endsizedbox,
  required this.containerheight,
  required this.fontsize,
  // required this.sKey,
  // required this.iconButton,
  Key? key,
}) : super(key: key);
//Widget page;
//Function? function;
Widget f;
double endsizedbox;
double containerheight;
double fontsize;


// GlobalKey<ScaffoldState> sKey;
// Icon iconButton;
String text;
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    
    return   Container(
        height: containerheight,
        width: double.infinity,
        decoration: BoxDecoration(
          // image:DecorationImage(image: AssetImage("assets/images/background2.png"),fit:BoxFit.cover ),
          color: greencolor,

          boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  ),
        child: Column(
          children: [
            SizedBox(height: screenheight / 20,),
            Container(
              height: screenheight / 13.4,
              // width: double.maxFinite,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                     width: screenwidth / 7,
                      child: f,
                      // child: IconButton( 
                      //   iconSize: 35,
                      //   color: Colors.white,
                      //   highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                      //   icon: iconButton,
                      //    onPressed: () => f),
                    ),
                    // SizedBox(width: 27,),
                    Container(
                      
                     width: screenwidth / 1.8,
                      child: Image(image: AssetImage("assets/images/logo2.png"))
                    ),
                    Container(
                      
                     width: screenwidth / 7
                      ,height: 1,)
              
                ]
              ),
              
            ),
            SizedBox(height: containerheight-endsizedbox-180,),
          Container(
        
        child: Text(text,
        style: TextStyle(fontSize: fontsize,

        
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
        ),
        ),
        SizedBox(
          height: endsizedbox,
        )
        ],
          
      ),
        )
    ;
  }
   dynamic get greencolor => HexColor("1EBD9D");
}


