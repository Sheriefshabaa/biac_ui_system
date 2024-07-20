import 'package:biac/DegressInformation/FirstDegree.dart';
import 'package:biac/DegressInformation/FourthDegree.dart';
import 'package:biac/DegressInformation/SecondDegree.dart';
import 'package:biac/DegressInformation/ThirdDegree.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:biac/shared/nav.dart';


// ignore: depend_on_referenced_packages
// ignore: must_be_immutable

class expertPage extends StatelessWidget {
  const expertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  ExpertPage(),
    );
  }
}

class ExpertPage extends StatefulWidget {
  @override
  State<ExpertPage> createState() => _ExpertPageState();
}

class _ExpertPageState extends State<ExpertPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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
 var scaffoldKey = GlobalKey<ScaffoldState>();

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: bottomNavBar(),
      drawer: drawer(),
      body:  SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                nav(text: "BIAC Expert ", 
              fontsize: 32, 
              f: IconButton( 
                        iconSize: 35,
                        color: Colors.white,
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.menu_sharp),
                         onPressed: () => scaffoldKey.currentState?.openDrawer()),endsizedbox: 20,containerheight: 250
                         ), 
                ],
              ),
        Container(
          height: 625,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    height: 45,
                  ),
                  
                  Row(
                    children: [
                      
              
                      SizedBox(width: 35,),
                  InkWell(
                    child: homeButton(color: Color.fromARGB(255, 243, 77, 220), 
                    text: "Upload", 
                    imageContainer: AssetImage("assets/images/medical-file.png"))
                    ,onTap:(){
                            _pickImageFromGallery();
                            }
                                          
             ),
                 SizedBox(
                      width: 15,
                     ),
                    InkWell(
                    child: homeButton(color: Color.fromARGB(255, 83, 77, 241), text: "Camera", imageContainer: AssetImage("assets/images/camera.png"))
                    ,onTap:(){
                            _captureImageFromCamera();
                            }
                                          
                     ),]),
                     SizedBox(
                      height: 30,
                     ),
                     InkWell(
                      child: homeButton(color: Color.fromARGB(255, 241, 132, 77), text: "TBSA", imageContainer: AssetImage("assets/images/human-body.png")),
                     )
                    ,
                     
               SizedBox(
                    height: 20,
                  ),
                  if (_pickedImage != null)
                          Container(
                            height: 400,
                            width: 250,
                            decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.all(Radius.circular(10)
                                      ),
                                      ),
                            child: Image.file(
                              File(_pickedImage!.path),
                              height: 200,
                            ),
                          ),
                  SizedBox(
                    height: 30,
                  ),
                 
                  
                ],
              ),
          ),
        ),],)
          ),

      )
    ;
  }
  Future<void> opendrawer() async {
    setState(() {
      scaffoldKey.currentState?.openDrawer();
    });
  }
  }
 


   
