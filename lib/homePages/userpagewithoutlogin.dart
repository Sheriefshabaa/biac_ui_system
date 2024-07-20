import 'package:biac/DegressInformation/FirstDegree.dart';
import 'package:biac/DegressInformation/FourthDegree.dart';
import 'package:biac/DegressInformation/SecondDegree.dart';
import 'package:biac/DegressInformation/ThirdDegree.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/drawer/drawerbeforelogin.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/models/burnimage.dart';
import 'package:biac/services/Api.dart';
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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:path_provider/path_provider.dart';






// ignore: depend_on_referenced_packages
// ignore: must_be_immutable

class userpagewithoutlogin extends StatelessWidget {
  const userpagewithoutlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  userpage_withoutlogin(),
    );
  }
}

class userpage_withoutlogin extends StatefulWidget {
  @override
  State<userpage_withoutlogin> createState() => _userpage_withoutlogin();
}

class _userpage_withoutlogin extends State<userpage_withoutlogin> {
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


    // final String filePath = 'C:/Users/ibrah/Downloads/biac-back-end-main/media/output_images/1002443725_M0Ix3N_f1ee75f0-823b-451d-b365-f5ce18e31377.jpg';

  bool isloding = false;

  String fullImageUrl = '' ;
  String imagePath = '';
  XFile? responseImage;

  
// XFile imageFiles = XFile('C:/Users/ibrah/Downloads/biac-back-end-main/media/output_images/1002443725_M0Ix3N_f1ee75f0-823b-451d-b365-f5ce18e31377.jpg');

// Create the Image widget inside a SizedBox
// Widget imageWidget = SizedBox(
//   height: 150,
//   child: Image.file(
//     File('C:\\Users\\ibrah\\Downloads\\biac-back-end-main\\media\\output_images\\1002443725_M0Ix3N_f1ee75f0-823b-451d-b365-f5ce18e31377.jpg'),
//     height: 150,
//   ),
// );

  Future<void> _captureImageFromCamera() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _pickedImage = image != null ? XFile(image.path) : null;
    });
  }

 var scaffoldKey = GlobalKey<ScaffoldState>();



  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      drawer: drawerbeforelogin(),
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
          height: screenheight ,
          child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    height: screenheight / 10.7,
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
                    ,onTap:()async{
                            _captureImageFromCamera();
                            // uploadImageService().uploadImageToServer(_pickedImage!.path);
                            }
                                          
                     ),]),
                    
                    // InkWell(
                    // child: homeButton(color: greencolor, text: "send", imageContainer: AssetImage("assets/images/camera.png"))
                    // ,onTap:()async{
                    //         var imageFile = File(_pickedImage!.path);
                    //         var response = await uploadImage(imageFile);
                    //         print(imageFile.path);
                    //         String baseUrl = Api().baseUrl + '/results';
                    //         String imagePath = response['processed_image_data']['image_with_model_classification'];
                    //         String fullImageUrl =  imagePath;
                    //         responseImage = XFile(imagePath);
                    //         print('sad');
                    //         print(fullImageUrl);
                            
                    //         // setState(() {

                           

                    //         // });
                            
                    //         // Now you can use fullImageUrl with Image.network to display the image:
                    //         // _responseImage();
                    //         // uploadImageService().uploadImageToServer(_pickedImage!.path);
                    //         }
                                          
                    //  ),
               SizedBox(
                    height: 50,
                  ),
  //                 Container(
  //                   height: 150,
  //             child:        Image.file( 
  //           File(filePath.replaceAll('\\', '/')), // Ensure path uses forward slashes
  //           fit: BoxFit.cover,
  //           errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
  //             return Text('Error loading image');
  // }),
                  // ),
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
                            setState(() {
                                      isloding = false;
                                    });
                            
                            }
                                          
                     ),
                      SizedBox(height: 10,),
                  // if (degreeimage != '')
                  //         Container(
                  //           height: 200,
                  //           width: 250,
                  //           decoration: BoxDecoration(
                  //         color: Color.fromARGB(255, 255, 255, 255),
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
                  //           child: Text(degreeimage,
                  //           style: TextStyle(
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold
                  //           ),
                  //         ),),
                    if (_pickedImage != null)
                          Container(
                            height: 200,
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
                    height: 50,
                  ),
                  // imageWidget??SizedBox(),
                  // imageWidget,

// Container(child: ImageDisplay(),),
                        
                  // if (fullImageUrl != false)
                  //         Container(
                  //           height: 400,
                  //           width: 250,
                  //           decoration: BoxDecoration(
                  //         color: Color.fromARGB(255, 255, 255, 255),
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
                  //           child: Image.file(
                  //             File(imagePath),
                  //             height: 200,
                  //           ),
                  //         ),
                  
                  
                  // InkWell(
                  //     child: homeButton(color: Color.fromARGB(255, 241, 132, 77), text: "TBSA", imageContainer: AssetImage("assets/images/human-body.png")),
                  //     onTap: () {
                  //       Navigator.push(context,MaterialPageRoute(builder: (context) => tbsaconfirm()));
                  //     },
                  //    )
                  //   ,
                    
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
  
  Future<void> opendrawer() async {
    setState(() {
      scaffoldKey.currentState?.openDrawer();
    });
  }}
  // class ImageDisplay extends StatelessWidget {
  // final String imagePath = 'C:/Users/ibrah/Downloads/biac-back-end-main/media/output_images/1002443725_M0Ix3N_f1ee75f0-823b-451d-b365-f5ce18e31377.jpg';

  // @override
  // Widget build(BuildContext context) {
  //   return FutureBuilder<bool>(
  //     future: _checkFileExists(imagePath),
  //     builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
  //       if (snapshot.connectionState == ConnectionState.waiting) {
  //         return CircularProgressIndicator();
  //       } else if (snapshot.hasError || snapshot.data != null) {
  //         return Text('Error loading image or file does not exist');
  //       } else {
  //         return SizedBox(
  //           height: 150,
  //           child: Image.file(
  //             File(imagePath),
  //             height: 150,
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }

  // Future<bool> _checkFileExists(String path) async {
  //   return File(path).exists();
  // }
  // }
