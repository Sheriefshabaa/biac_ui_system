import 'package:biac/Volunteer/volunteerpage.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/Registration/login.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/buttons.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class volunteerregistration extends StatefulWidget {
  @override
  State<volunteerregistration> createState() => _volunteerregistrationState();
}

class _volunteerregistrationState extends State<volunteerregistration> {
  var emailController = TextEditingController();

  var passwordController1 = TextEditingController();
  var passwordController2 = TextEditingController();

  double spread = 4;
  double blur = 10;


  bool secureText1 = true;
  bool secureText2 = true;

     final ImagePicker _imagePicker = ImagePicker();
  XFile? _pickedImage;

  Future<void> _pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
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
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                        alignment: Alignment.topLeft,
                         child: Image(image: AssetImage('assets/images/Frame.png'),
                         width: screenwidth/2,
                        height: screenheight / 5,),
                       ),
                       Container(
                        margin: EdgeInsets.fromLTRB(0, 80, 0, 10),
                         child: Image(
                           height: screenheight / 15,
                           width: screenwidth / 2,
                           image: AssetImage('assets/images/Volunteer.png'),
                           color:HexColor("#5CBAA7"),
                           alignment: Alignment.topRight,),
                       ),
                     ],
                   ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                          SizedBox(height: 25,),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                             boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: spread,
                              blurRadius: blur,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                          child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'National ID/Passport ID',
                            prefixIcon: Icon(
                              Icons.supervisor_account_sharp,
                            ),
                            border:InputBorder.none,
                          ),
                                                      ),
                        ),
                        SizedBox(height: 23,),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                             boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: spread,
                              blurRadius: blur,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                          child: TextFormField(
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Specialization',
                            prefixIcon: Icon(
                              Icons.folder_special_outlined,
                            ),
                            border:InputBorder.none,
                          ),
                                                      ),
                        ),
                        
                        SizedBox(height: 23,),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                             boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: spread,
                              blurRadius: blur,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                          child: TextFormField(
                          onFieldSubmitted: (String value) {
                            print(value);
                          },
                          onChanged: (String value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Syndicate Card',
                            prefixIcon: Icon(
                              Icons.card_membership,
                            ),
                            border:InputBorder.none,
                          ),
                                                      ),
                        ),
                        
                    
                        SizedBox(height: 23,),
                        InkWell(
                          child: Container(
                            height: 64,
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
                                color: Colors.white,
                              
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('License to Practice the Profession ',
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                                Icon(Icons.cloud_upload)
                              
                              ],),
                               ),
                               onTap: () {
                                _pickImageFromGallery();
                               },
                        ),
                            SizedBox(height: 23,),
                            InkWell(
                          child: Container(
                            height: 64,
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
                                color: Colors.white,
                              
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('Medicine Bachelor Degree          ',
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                                Icon(Icons.cloud_upload)
                              
                              ],),
                               ),
                               onTap: () {
                                _pickImageFromGallery();
                               },
                        ),
                            SizedBox(height: 23,),
                            InkWell(
                          child: Container(
                            height: 64,
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
                                color: Colors.white,
                              
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('Certificate of Excellence             ',
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                                Icon(Icons.cloud_upload)
                              
                              ],),
                               ),
                               onTap: () {
                                _pickImageFromGallery();
                               },
                        ),
                            SizedBox(height: 23,),
                            InkWell(
                          child: Container(
                            height: 64,
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
                                color: Colors.white,
                              
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text('Egyptian Board Certificate          ',
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                                Icon(Icons.cloud_upload)
                              ],),
                               ),
                               onTap: () {
                                _pickImageFromGallery();
                               },
                        ),
                            SizedBox(height: 23,),
                    
                    
                      
                        SizedBox(height: 20,),
                    
                         
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0,0.0, 200.0, 0.0),
                          decoration: BoxDecoration(
                             boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Color.fromARGB(255, 1, 152, 116),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30)
                            )
                          ),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteerpage()));
                              
                            },
                            child: Container(
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        
                      ],
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
