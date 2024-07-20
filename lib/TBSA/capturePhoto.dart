import 'dart:io';

import 'package:biac/TBSA/captureBurn.dart';
import 'package:biac/TBSA/patientdata.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:biac/services/registrationtbsaservice.dart';
import 'package:biac/services/tbsahand.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class capturePhoto extends StatefulWidget {
 

  @override
  State<capturePhoto> createState() => _capturePhotoState();
}

class _capturePhotoState extends State<capturePhoto> {

     final ImagePicker _imagePicker = ImagePicker();
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
                        Navigator.push(context,MaterialPageRoute(builder: (context) =>patientdata()));
                     },
                   ),
                   
               ],)
               ,
               SizedBox(
                 height: screenheight/50,
               ),
               Text("Capture Patient's Hand\n Images",
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
                    height: 10,),
                          if (_pickedImage == null) 
                            Container(
                                height: screenheight/20,
                                margin: EdgeInsets.fromLTRB(40.0,0.0, 40.0, 0.0),
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
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () {
                                    
                                    _captureImageFromCamera();
                                      
                                  },
                                  child: Container(
                                    child: Text(
                                      'capture hand image',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
        

                  SizedBox(
                    height: screenheight/3.0,
                  ),
                        if (_pickedImage != null)
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
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () async{
                                    
                                    
                                      var imageFile = File(_pickedImage!.path);
                                       await TbsaHandImage(imageFile);
                                      print(imageFile.path);

                                      Navigator.push(context,MaterialPageRoute(builder: (context) =>captureBurn()));
                                      
                                  },
                                  child: Container(
                                    child: Text(
                                      'Confirm And Fetch',
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
         ),

                    ),
      )
    ;
  }

    dynamic get greencolor => HexColor("1EBD9D");
}
