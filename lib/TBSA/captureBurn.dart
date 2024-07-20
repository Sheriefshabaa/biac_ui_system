import 'dart:io';

import 'package:biac/TBSA/TBSAResult.dart';
import 'package:biac/TBSA/capturePhoto.dart';
import 'package:biac/TBSA/review.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/services/capturburnservice.dart';
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
import 'package:image_picker/image_picker.dart';
// ignore: must_be_immutable
class captureBurn extends StatefulWidget {
 

  @override
  State<captureBurn> createState() => _captureBurnState();
}

class _captureBurnState extends State<captureBurn> {
late List<File> _imageFiles = [];

   final ImagePicker _imagePicker = ImagePicker();


  bool isloding = false;

  XFile? _pickedImage;

  Future<void> _pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _pickedImage = image != null ? XFile(image.path) : null;
    });
  }

  Future<void> _captureImageFromCamera() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = image != null ? XFile(image.path) : null;
    });
  }

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
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>capturePhoto()));
                     },
                   ),
                   
               ],)
               ,
               SizedBox(
                 height: screenheight/50,
               ),
               Text("Capture Patient's Burn\n Images",
               textAlign: TextAlign.center,
               style: TextStyle(
                 fontSize: 32,
                 color: greencolor,
                 fontWeight: FontWeight.bold,
                 fontFamily: 'Radio' )),

                SizedBox(
                  height: screenheight/23,
                ),
                 Image(image: AssetImage('assets/images/capture.png'),width: 250,),

                 SizedBox(
                  height: 20,
                 ),

                 Container(
                  margin: EdgeInsets.fromLTRB(20, 0,20, 0),
                   child: Text("Please capture an image of the patient's hand and all burns on their body.",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400
                   ),),
                 ),

                  SizedBox(
                    height: 20,
                  ),
                  Container(
                  margin: EdgeInsets.fromLTRB(20, 0,20, 0),
                   child: Text(" If this is the final image, press 'Confirm and Fetch'. If you want to add more images, press 'Fetch Other Images'",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                   ),),
                 ),
                 

                  SizedBox(
                    height: screenheight/10,
                  ),
                            
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Container(
                                    height: screenheight/15,
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
                                    color: greencolor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                    child: MaterialButton(
                                      
                                      onPressed: () async{
                                        
                                        await _pickImageFromGallery();
                                        var imageFile = File(_pickedImage!.path);
                                        _imageFiles.add(imageFile!);
                                        
                                         print(_imageFiles);
                                      },
                                      child: Container(
                                        child: Text(
                                          'Fetch Other\n Images',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                         Container(
                                    height: screenheight/15,
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
                                    color: greencolor,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10)
                                      )
                                    ),
                                    child: MaterialButton(
                                      
                                      onPressed: () async{
                                        
                                        await captureburnservice(_imageFiles);
                                        setState(() {
                                          isloding = true;});
                                        gettbsadata();
                                        await Future.delayed(const Duration(seconds: 4));
                                        
                                        Navigator.push(context,MaterialPageRoute(builder: (context) =>TBSAResult()));
                                        print(_imageFiles);
                                        
                                      },
                                      child: Container(
                                        child: isloding? CircularProgressIndicator(color: Colors.white,) : Text(
                                          'Confirm And\n Fetch',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20,
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

    dynamic get greencolor => HexColor("1EBD9D");
}
