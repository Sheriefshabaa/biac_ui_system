import 'dart:async';
import 'dart:typed_data';

import 'package:biac/drawer/drawer.dart';
import 'package:biac/services/updateprofileservice.dart';
import 'package:biac/services/upload_image.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';


// ignore: must_be_immutable, camel_case_types
class editProfile extends StatefulWidget {
  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
 var emailController = TextEditingController();
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var phone = TextEditingController();
  String? f;
  String? l;


 String _selectedGender = 'Male';

  var passwordController1 = TextEditingController();

  var passwordController2 = TextEditingController();

  bool secureText1 = true;

  bool secureText2 = true;


   DateTime _selectedDate = DateTime.now();

  void _selectDate(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 250,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Container(
              height: 170,
              child: CupertinoDatePicker(
                initialDateTime: _selectedDate ?? DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                onDateTimeChanged: (DateTime newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                },
              ),
            ),
            CupertinoButton(
              child: Text('Done'),
              onPressed: () { setState(() {
                
                });
   } ),
          ],
        ),
      ),);}





   final ImagePicker _imagePicker = ImagePicker();
  Uint8List? _pickedImage;


  Future<void> _pickImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _pickedImage = image != null ? Uint8List(image.hashCode) : null;
    });
  }


  List<String> itemList = ['Male','Female'];
  String? selectedItem = 'Male';

  @override
  Widget build(BuildContext context) {
     final screenheight = MediaQuery.of(context).size.height; 
     final screenwidth = MediaQuery.of(context).size.width;

    return 
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenheight / 3.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greencolor,
                  boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(80),
                            bottomLeft: Radius.circular(80),
                          ),
                          ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: Row(

                        children: [
                            Container(
                              width: 50,
                              height: 105,
                              alignment: Alignment.topLeft,
                              child: IconButton( 
                                iconSize: 35,
                                color: Colors.white,
                                highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                                icon: Icon(Icons.arrow_back_ios_new_outlined),
                                 onPressed: () {
                                   Navigator.push(context,MaterialPageRoute(builder: (context) => bottomNavBar()));
                }, ),
                            ),
                            Container(
                              width: 337,
                              height: 105,
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 60,
                                height: 60,
                                color: greencolor,)
                            ),
                      
                        ]
                      ),
                      
                    ),
                  Container(
                    width: 100,
                    height: 100,
                
                child: Stack(
                  children: [
                    _pickedImage != null ?
                    CircleAvatar(backgroundImage: MemoryImage(_pickedImage as Uint8List),radius: 64,):
                
                    CircleAvatar(backgroundImage: AssetImage("assets/images/profileempty.jpg"),radius: 64
                    ,),
                Positioned(
                  child: IconButton(icon: Icon(Icons.add_a_photo),
                  onPressed: () {
                  _pickImageFromGallery();
                },))])
                ),
                SizedBox(height: 10,),
                
                ],
                  
              ),
                ),
                Container(
                  height: 50,
                  child: Text("Edit Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),),
                ),
                 Container(
                  width: screenwidth / 1.1,
                    height: screenheight / 1.55,
                    decoration: BoxDecoration(
                       boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color:Color.fromARGB(255, 230, 230, 230)),
                  margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          
                        
                          SizedBox(height: 25,),
                          
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                  decoration: BoxDecoration(
                                     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10,
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
                                  controller: firstName,
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                    f = value;
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'First Name',

                                    prefixIcon: Icon(
                                      Icons.supervisor_account_sharp,
                                    ),
                                    border:InputBorder.none,
                                  ),
                                                              ),
                                ),
                                SizedBox(
                            height: 25.0,
                          ),
                          
                                Container(
                                  margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                  decoration: BoxDecoration(
                                     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 10,
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
                                  controller: lastName,
                                  onFieldSubmitted: (String value) {
                                    l = value;
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Last Name',
                                    prefixIcon: Icon(
                                      Icons.supervisor_account_sharp,
                                    ),
                                    border:InputBorder.none,
                                  ),
                                                              ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),

                          emailContainer(emailController: emailController,),
                          // emailContainer(),
                          SizedBox(
                            height: 25.0,
                          ),

                       
                         
                            Container(
                               margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            width: screenwidth/1.2,
                            height: screenheight/15.5,
                            decoration: BoxDecoration(
                               boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30)
                              )
                            ),
                              child: MaterialButton(
                                
                                
                                onPressed: () => _selectDate(context),
                                child: Text('${_selectedDate.toLocal()}'.split(' ')[0]
                                ,
                                style: TextStyle(fontSize: 15),
                                  ),
                            ),
                          ),  

                          SizedBox(
                            height: 25.0,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            decoration: BoxDecoration(
                               boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30)
                              )
                            ),
                            child: TextFormField(
                            keyboardType: TextInputType.phone,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Your Phone',
                              prefixIcon: Icon(
                                Icons.phone_iphone,
                              ),
                              border:InputBorder.none,
                            ),
                                                        ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            width: screenwidth/1.2,
                            height: screenheight/15.5,
                            decoration: BoxDecoration(
                               boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30)
                              )
                            ),
                            child: DropdownButton<String>(
                              padding: EdgeInsets.all(10),
                              isExpanded: true,
                              dropdownColor: null,
                              underline: SizedBox(),
                                  hint: Text("Select Gender",textAlign: TextAlign.center,),
                                  value: _selectedGender,
                                  items: <String>['Male', 'Female'].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _selectedGender = newValue.toString();
                                    });
                                  },
                                                    ),
                          ),
                        SizedBox(height: 20),
                        // Container(
                        //   alignment: Alignment.center,
                        //   child: Text(
                        //     textAlign: TextAlign.center,
                        //     _selectedGender == null ? "No gender selected" : "Selected Gender: $_selectedGender",
                        //     style: TextStyle(fontSize: 18),
                        //   ),
                        // ),
                        // SizedBox(height: 10,),

                          
                          // Center(
                          //   child: DropdownButton(
                          //     items: itemList
                          //     .map((String item) => DropdownMenuItem(child: Text(item , style: TextStyle(fontSize: 26)),value: selectedItem,))
                          //     .toList()
                          //     , onChanged: (String?  newitem) => setState(() {
                          //       selectedItem = newitem;
                          //     }
                          //     ),
                          //     value: selectedItem,

                          //     ),
                          // )
                          // ,
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
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
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () async{
                                   dynamic result = await updateProfile(
                                      // token: 'token',
                                      firstName.text,
                                      lastName.text,
                                      emailController.text,
                                      _selectedGender,
                                       phone.text,
                                     _selectedDate,
                                      // _pickedImage.toString(),
                                    );
                                    if (result == true) { 
                                        print('Login Successful');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    bottomNavBar()));
                                      } else {
                                        print('Login Failed');}
                                    print('helllllllooo');
                                    // Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                                  },
                                  child: Container(
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                   boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )
                                ),
                                width: 150,
                                child: MaterialButton(
                                  onPressed: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>user_page2()));
                                  },
                                  child: Container(
                                    child: Text(
                                      'Cancel',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
               
            ],
          ),
        ),
      )
    ;
  }
  dynamic get greencolor => HexColor("1EBD9D");

}


