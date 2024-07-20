import 'package:biac/DegressInformation/FirstDegree.dart';
import 'package:biac/DegressInformation/FourthDegree.dart';
import 'package:biac/DegressInformation/SecondDegree.dart';
import 'package:biac/DegressInformation/ThirdDegree.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/services/historyservice.dart';
import 'package:biac/shared/buttons.dart';
import 'package:biac/shared/historyContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:biac/shared/nav.dart';

 List<dynamic> user = userData;

// ignore: depend_on_referenced_packages
// ignore: must_be_immutable

class volunteerPage extends StatelessWidget {
  
 
  const volunteerPage({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  VolunteerPage(),
    );
  }
}

class VolunteerPage extends StatefulWidget {
  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
 var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      key: scaffoldKey,
      body:  SingleChildScrollView(
          child: Column(
            children: [
              nav(text: "BIAC Volunteer",
              fontsize: 32, 
              f: IconButton( 
                        iconSize: 35,
                        color: Colors.white,
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.menu_sharp),
                         onPressed: () => scaffoldKey.currentState?.openDrawer()),endsizedbox: 20,containerheight: 250),
              Container(
                height: 625,
                child: SingleChildScrollView(
                  child: Column(
                      children: [
                    //  InkWell(
                    //   child: historyContainer( containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                    //   onTap: (){
                    //           Navigator.push(context,MaterialPageRoute(builder: (context) =>FourthDegree()));
                    //                 },
                    // ),
                    //  InkWell(
                    //   child: historyContainer( containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                    //   onTap: (){
                    //           Navigator.push(context,MaterialPageRoute(builder: (context) =>FourthDegree()));
                    //                 },
                    // ),
                    //  InkWell(
                    //   child: historyContainer( containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                    //   onTap: (){
                    //           Navigator.push(context,MaterialPageRoute(builder: (context) =>FourthDegree()));
                    //                 },
                    // ),
                
                 
                  
                ],
              ),
          ),
        ),],)
          ),

      )
    ;
  }
  
  }
 


   
