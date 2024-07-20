import 'package:biac/DegressInformation/FirstDegree.dart';
import 'package:biac/DegressInformation/FourthDegree.dart';
import 'package:biac/DegressInformation/SecondDegree.dart';
import 'package:biac/DegressInformation/ThirdDegree.dart';
import 'package:biac/History.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/caseDetails.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/services/Api.dart';
import 'package:biac/services/firstaidservice.dart';
import 'package:biac/services/upload_image.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/buttons.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:biac/shared/nav.dart';
import 'package:hexcolor/hexcolor.dart';

import '../shared/historyContainer.dart';



// ignore: depend_on_referenced_packages
// ignore: must_be_immutable

class userpage2 extends StatelessWidget {
  const userpage2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenhieght = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      
      home:  user_page2(),
    );
  }
}

class user_page2 extends StatefulWidget {
  @override
  State<user_page2> createState() => _user_page2State();
}

class _user_page2State extends State<user_page2> {
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

  bool isloding = false;
  
  String fullImageUrl = '' ;
  String imagePath = '';
  XFile? responseImage;

 var scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 


    return Scaffold(
      key: scaffoldKey,
      drawer: drawer(),
      // bottomNavigationBar: bottomNavBar(),
       body:  SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                 nav(text: "BURNS INHIBITION APPLICATION FOR CITIZENS", 
              fontsize: 20, 
              
              f: IconButton( 
                        iconSize: 35,
                        color: Colors.white,
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.menu_sharp),
                         onPressed: () => scaffoldKey.currentState?.openDrawer()),endsizedbox: 0,containerheight: screenheight / 3.8,),
                         
                ],
              ),
        Container(
          height: screenheight / 1.5,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    height: screenheight / 7.7,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      
              
                    InkWell(
                    child: homeButton(color: greencolor, 
                    text: "Upload", 
                    imageContainer: AssetImage("assets/images/medical-file.png"))
                    ,onTap:(){
                            _pickImageFromGallery();
                            }
                                          
             ),
                InkWell(
                    child: homeButton(color: greencolor, text: "Camera", imageContainer: AssetImage("assets/images/camera.png"))
                    ,onTap:(){
                            _captureImageFromCamera();
                            }
                                          
                     ),]),
                    
                     
               SizedBox(
                    height: 50,
                  ),
                  if (_pickedImage != null)
              InkWell(
                    child: isloding? CircularProgressIndicator(color: Colors.black,) : homeButton(color: greencolor,  text: "send", imageContainer: AssetImage("assets/images/send.png",),)
                    ,onTap:()async{
                      setState(() {
                                      isloding = true;
                                    });
                            var imageFile = File(_pickedImage!.path);
                            var response = await uploadImage(imageFile);
                            print(imageFile.path);
                            String baseUrl = Api().baseUrl + '/results';
                            String imagePath = response['processed_image_data']['image_with_model_classification'];
                            String fullImageUrl =  imagePath;
                            responseImage = XFile(imagePath);
                            print('sad');
                            print(fullImageUrl);
                            print("${user[4]['classified_images']['id']['burn_degree']}");
                            setState(() {
                                      isloding = false;
                                    });
                            
                            }
                     ),
                     SizedBox(height: 10,),

                //      if(degreeimage != '')
                //        InkWell(
                //     child: historyContainer(containerText: " ${user[4]['classified_images']['id']['burn_degree']} ",containerText2:"${user[4]['captured_at']}",
                //      imageContainer: "${Api().baseUrl +"/results" + user[4]['classified_images']['id']['image_with_model_classification']}"
                //      ),
                //     onTap: () async{
                //       //userid = i-13;
                      
                //       userid = 4;
                //       await fetchfirstaid();
                //       await firstaidData;

                //       print(user[4].length);
                //       burndegreecase = user[4]['classified_images']["id"]['burn_degree'];

                //       imageworking = "${Api().baseUrl +"/results" + user[4]['classified_images']['id']['image_with_model_classification']}";
                //       print("object");
                //       print(userid);
                //       print(imageworking);

                //       String degree = user[4]['classified_images']['id']['burn_degree'];
                //       print(degree);
                //       print("${Api().baseUrl +"/results" + user[4]['classified_images']['id']['image_with_model_classification']}");
                            
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                //                 //  print(firstaidData);
                //                   },
                //   ),
                //   SizedBox(
                // height: 20,)
                // ,
                

                      if (degreeimage != '')
                          Container(
                            height: 50,
                            width: screenwidth / 1.8,
                            decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.all(Radius.circular(10)
                                      ),
                                      ),
                            child: Text(degreeimage,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),),
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
                          
                  
                  
                  // InkWell(
                  //     child: homeButton(color: Color.fromARGB(255, 241, 132, 77), text: "TBSA", imageContainer: AssetImage("assets/images/human-body.png")),
                  //     onTap: () {
                  //       Navigator.push(context,MaterialPageRoute(builder: (context) => tbsaconfirm()));
                  //     },
                  //    )
                  //   ,
                    SizedBox(
                    height: 30,
                  ),
                    SizedBox(
                    child: InkWell(
                      child: Container(
                        width: screenwidth / 1.12,
                        height: screenheight / 4,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          image:DecorationImage(image:  AssetImage("assets/images/map.png"),fit: BoxFit.cover,
                          opacity: .8),
                          color: Color.fromARGB(255, 219, 219, 219),
                              boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                                      ),
                                      ),
                                      
                                    
                      
                      onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => FirstDegree()));
                                    },
                    ),
                  ),
                  Container(
                    width: screenwidth / 1.12,
                     decoration: BoxDecoration(
                         
                          color: Color.fromARGB(255, 174, 174, 174),
                              boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                      ),
                    
                    child:Text("Closest Burn Hospital For You",style: TextStyle(
                      
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                      ),
                                      textAlign: TextAlign.center,)
                  )
                  
                ],
              ),
          ),
        ),],)
          ),

     
      
      );
      
    
  }

  dynamic get greencolor => HexColor("1EBD9D");
  dynamic get graycolor => Color.fromARGB(255, 187, 187, 187);

  
  Future<void> opendrawer() async {
    setState(() {
      scaffoldKey.currentState?.openDrawer();
      degreeimage = '';
    });
  }
  
  }
 


  //  bottomNavigationBar: CurvedNavigationBar(
  //           color: Colors.white,
  //           backgroundColor: HexColor("#5CBAA7"),
  //           items: <Widget>[
  //             Icon(Icons.add, size: 25),
  //             Icon(Icons.list, size: 25),
  //             Icon(Icons.compare_arrows, size: 25),
  //           ],
  //           onTap: (index) {
  //             //Handle button tap
  //           },
  //         ),
  //         bottomNavigationBar: Container(
  //           color: Color.fromARGB(255, 148, 148, 148),
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
  //             child: GNav(
  //                 backgroundColor: Color.fromARGB(255, 148, 148, 148),
  //                 color: Color.fromARGB(255, 255, 255, 255),
  //                 activeColor: Color.fromARGB(255, 0, 0, 0),
  //                 tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
  //                 gap: 8,
  //                 padding: EdgeInsets.all(16),
  //                 tabs: const [
  //                   GButton(
  //                     icon: Icons.home,
  //                     text: 'Home',
  //                   ),
  //                   GButton(
  //                     icon: Icons.login,
  //                     text: 'login',
  //                   ),
  //                   GButton(
  //                     icon: Icons.logout,
  //                     text: 'logout',
  //                   ),
  //                   GButton(
  //                     icon: Icons.signpost_outlined,
  //                     text: 'signup',
  //                   ),
  //                 ]),
  //           ),
  //         ),


          


                  // Row(
                  //   children: [
                      
              
                  //     SizedBox(width: 35,),
                  //     SizedBox(
                  //       child: InkWell(
                  //         child: Container(
                  //           height: 180,
                  //           width: 150,
                  //           decoration: BoxDecoration(
                  //         color: Color.fromARGB(255, 243, 77, 220),
                  //             boxShadow: [
                  //                     BoxShadow(
                  //                       color: Colors.grey.withOpacity(0.5),
                  //                       spreadRadius: 5,
                  //                       blurRadius: 7,
                  //                       offset: Offset(0, 3), // changes position of shadow
                  //                     ),
                  //                   ],
                  //                     borderRadius: BorderRadius.all(Radius.circular(10)
                  //                     ),
                  //                     ),
                  //                     child: Image(image: AssetImage("assets/images/camera.png")
                  //                     ,color: const Color.fromARGB(255, 230, 229, 227),
                  //                     height: 1,
                  //                     width: 1,),
                  //         ),
                  //         onTap:(){
                  //           _pickImageFromGallery();
                  //          }
                  //       ),
                  //     ),
                  //     SizedBox(width: 20,),
                  //   SizedBox(
                  //     child: InkWell(
                  //       child: Container(
                  //       height: 180,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //         color: Color.fromARGB(255, 83, 77, 241),
                  //             boxShadow: [
                  //                     BoxShadow(
                  //                       color: Colors.grey.withOpacity(0.5),
                  //                       spreadRadius: 5,
                  //                       blurRadius: 7,
                  //                       offset: Offset(0, 3), // changes position of shadow
                  //                     ),
                  //                   ],
                  //                     borderRadius: BorderRadius.all(Radius.circular(10)
                  //           ),
                  //         ),
                  //         child: Image(image: AssetImage("assets/images/medical-file.png")
                  //         ,color: const Color.fromARGB(255, 243, 242, 239),
                  //         height: 10,
                  //         width: 10,),
                  //       ),
                  //       onTap: (){
                  //         _captureImageFromCamera();
                  //                   },
                  //     ),
                  //   ),
                  //   ],
                  // ),
                  

  

   // Container(
                  //   height: 250,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     image:DecorationImage(image: AssetImage("assets/images/background2.png"),fit:BoxFit.cover ),
                  //     boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 5,
                  //               blurRadius: 7,
                  //               offset: Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //             borderRadius: BorderRadius.only(
                  //               bottomRight: Radius.circular(70),
                  //               bottomLeft: Radius.circular(70),
                  //             ),
                  //             ),
                  //   child: Expanded(
                  //     child: Row(
                  //       children: [
                  //           Container(
                  //             width: 50,
                  //             height: 170,
                  //             alignment: Alignment.topLeft,
                  //             child: IconButton( 
                  //               iconSize: 35,
                  //               color: Colors.white,
                  //               highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                  //               icon: Icon(Icons.menu_sharp), 
                  //               onPressed: () 
                  //               {
                  //                Navigator.push(context,MaterialPageRoute(builder: (context) =>drawer()));
                  //               }, ),
                  //           ),
                  //           Container(
                  //             width: 337,
                  //             height: 170,
                  //             alignment: Alignment.topRight,
                  //             child: Container(
                  //               width: 60,
                  //               height: 60,
                  //               child: Image(image: AssetImage("assets/images/icon_splach.png")))
                  //           ),
                  //       ]
                  //     ),
                  //   ),
                  // ),
