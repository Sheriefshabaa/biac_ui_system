import 'dart:async';
import 'dart:typed_data';

import 'package:biac/TBSA/capturePhoto.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/services/getidtbsaservice.dart';
import 'package:biac/services/registrationtbsaservice.dart';
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
class patientdata extends StatefulWidget {
  @override
  State<patientdata> createState() => _patientdataState();
}

class _patientdataState extends State<patientdata> {
 var emailController = TextEditingController();

 String? _selectedGender;

  var passwordController1 = TextEditingController();

  var passwordController2 = TextEditingController();

  bool secureText1 = true;

  bool secureText2 = true;

var nameController = TextEditingController();
int ageController = 0;
int weightController = 0;
String inhalationController = "true";
String gender = 'M';


  String? validateNum(String? Num)
  {
    if(Num!.length>3)
    {
      return '            please enter valid Num';
    }
    return null; 
  }


   DateTime? _selectedDate;

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
String? _selectedPatientType;

  List<String> itemList = ['Male','Female'];
  String? selectedItem = 'Male';


String? _selectedInhalationInjury;

  final List<String> _inhalationInjuryOptions = [
    'true',
    'false',
  ];


final List<String> _patientTypes = [
    'Adult',
    'Child',
    'Over 60 years old',
  ];


  @override
  Widget build(BuildContext context) {
     final screenheight = MediaQuery.of(context).size.height; 
     final screenwidth = MediaQuery.of(context).size.width;

    return 
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Row(
                  
                  children: [
                    Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.topLeft,
                                    child: IconButton( 
                                      iconSize: 35,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                                       onPressed: () {
                                         Navigator.push(context,MaterialPageRoute(builder: (context) => bottomNavBar()));
                      }, ),
                                  ),
                  ],
                ),
              ),

                    Row(
                      children: [
                        Container(
                          width: screenwidth/1.669,
                          child: Text('Let`s start to enter\npatient data',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 27,
                              color: greencolor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Radio' )),
                        ),
                            Image(image: AssetImage('assets/images/tbsadata.png',),width: screenwidth/2.5,)
                      ],
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
                                  controller: nameController,
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Name',
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
                            keyboardType: TextInputType.number,
                            
                            onFieldSubmitted: (String value) {
                              ageController = int.parse(value);
                              print(value);
                            },
                            onChanged: (String value) {
                              
                              ageController = int.parse(value);
                              print(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              labelText: 'Age',
                              // prefixIcon: Icon(
                              //   Icons.phone_iphone,
                              // ),
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
                            
                            keyboardType: TextInputType.number,
                            onFieldSubmitted: (String value) {
                            weightController = int.parse(value);
                              print(value);
                            },
                            onChanged: (String value) {
                              
                            weightController = int.parse(value);
                              print(value);
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: 'Weight in KG',
                              labelText: 'Weight',
                              // prefixIcon: Icon(
                              //   Icons.phone_iphone,
                              // ),
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
                              
                              isExpanded: true,
                              dropdownColor: null,
                                      padding: EdgeInsets.all(10),
                                      hint: Text('Select Inhalation Injury',textAlign: TextAlign.center,),
                                      value: inhalationController,
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          inhalationController = newValue ?? '';
                                        });
                                      },
                                      items: _inhalationInjuryOptions.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),),
           
                        SizedBox(height: 40,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                   boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                blurRadius: 10,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )
                                ),
                                width: 100,
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
                                Container(
                                decoration: BoxDecoration(
                                   boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                blurRadius: 10,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Color.fromARGB(255, 1, 152, 116),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )
                                ),
                                width: 100,
                                child: MaterialButton(
                                  onPressed: () async{
                                    await registertbsa(nameController.text,
                                     gender, 
                                    inhalationController, ageController, weightController
                                    );
                                    // await getidtbsa();
                                  Navigator.push(context,MaterialPageRoute(builder: (context) =>capturePhoto()));
                                  },
                                  child: Container(
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
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


