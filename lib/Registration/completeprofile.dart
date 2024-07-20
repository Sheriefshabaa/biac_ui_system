import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class completeProfile extends StatefulWidget {
  @override
  State<completeProfile> createState() => _completeProfileState();
}

class _completeProfileState extends State<completeProfile> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
   DateTime? _selectedDate;
  String? _selectedGender;


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

  String? validateEmail(String? email)
  {
    RegExp emailRegex = RegExp(r'^([a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if(!isEmailValid)
    {
      return '            please enter valid email';
    }
    return null; 
  }

  bool secureText = true;

  @override
  Widget build(BuildContext context) {
    
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 
    return Scaffold(
      body:  SingleChildScrollView(
          child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                          alignment: Alignment.topLeft,
                           child: Image(image: AssetImage('assets/images/Frame.png'),
                           width: screenwidth/2,
                            height: screenheight / 4.8,),
                         ),
                        
                        SizedBox(width: screenwidth/4.5,),
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
                                color: Color.fromARGB(255, 202, 202, 202),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )
                                ),
                            child: MaterialButton(
                              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar())
                              )
                      ,child: Container(
                        child: Text(
                                      'skip',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 17
                                      ),
                                    ),
                                  ),
                                ),
                      ),
                      SizedBox(width: 1,)
                      
                         
                       ],
                     ),
                     SizedBox(
                      height: 15,
                     ),
                    SingleChildScrollView(
                      child: Container(
                        width: screenwidth,
                        height: screenheight / 1.3,
                        decoration: BoxDecoration(
                          boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color:Color.fromARGB(255, 230, 230, 230)),
                      margin: EdgeInsets.fromLTRB(0.0,0.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 25,),
                              Container(
                                alignment: Alignment.center,
                                child: Image(image: AssetImage('assets/images/person.png')
                                // ,height: screenheight / 3.1,
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Complete Your Profile!',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 55.0,
                              ),

                           
                          Container(
                            height: 60,
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
                              labelText: 'Phone',
                              prefixIcon: Icon(
                                Icons.phone_iphone,
                              ),
                              border:InputBorder.none,
                            ),
                                                        ),
                          ),
                              
                              SizedBox(
                            height: 40.0,
                          ),
                    
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            width: screenwidth,
                            height: 60,
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
                                      _selectedGender = newValue;
                                    });
                                  },
                                                    ),
                          ),
                          SizedBox(height: 40),
                              
                          Container(
                            margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                            width: screenwidth,
                            height: 60,
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
                                child: Text('Select date',),),
                            ),
                        
                            SizedBox(
                              height: 60,
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
                                color: Color.fromARGB(255, 1, 152, 116),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30)
                                  )
                                ),
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () {
                                    formKey.currentState!.validate();
                                    print(emailController.text);
                                    print(passwordController.text);
                                        Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                      
                                  },
                                  child: Container(
                                    child: Text(
                                      'Complete Profile',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 17
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      )
    ;
  }
}
