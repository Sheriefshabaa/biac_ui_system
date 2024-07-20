import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/services/loginservice.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

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

  bool isloding = false;
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
                     Container(
                      alignment: Alignment.topLeft,
                       child: Image(image: AssetImage('assets/images/Frame.png'),
                       width: screenwidth/2,
                        height: screenheight / 4.8,),
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
                              Container(
                                alignment: Alignment.center,
                                child: Image(image: AssetImage('assets/images/medicine_login.png')
                                ,height: screenheight / 3.1,
                                ),
                              ),
                              SizedBox(
                                height: 14.0,
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  'Welcome Back !',
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 22.0,
                              ),
                              
                              emailContainer(emailController: emailController,),
                              SizedBox(
                                height: 20.0,
                              ),
                              
                              passwordContainer(passwordController: passwordController, secureText: secureText, iconButton: IconButton(onPressed: (){
                                        setState(() {
                                          secureText = !secureText;
                                        });
                                      },
                                      icon:Icon(!secureText ? Icons.visibility_off : Icons.remove_red_eye),
                                    ),
                                    lable: 'Password',),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                height: 35,
                                alignment: Alignment.topRight,
                                margin: EdgeInsets.fromLTRB(00.0,0.0, 18.0, 0.0),
                                child: TextButton(
                                  onPressed: (){
                                     Navigator.push(context,MaterialPageRoute(builder: (context) =>forgotPassword()));
                                  }, 
                                  child: Text('Forgot Password?',
                                  style: TextStyle(color: Color.fromARGB(255, 1, 152, 116),
                                    // fontSize: 14.0,
                                    // fontWeight: FontWeight.w400,
                                  ),
                                  ),
                                  ),
                              )
                              ,
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
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
                                  
                                  onPressed: () async{
                                    setState(() {
                                      isloding = true;
                                    });
                                    formKey.currentState!.validate();
                                     formKey.currentState!.validate();
                                      var Email = emailController.text;
                                      var Password = passwordController.text;
                                      dynamic result = await loginUser(Email, Password);
                                      if (result == true) {
                                        print('Login Successful');
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    bottomNavBar()));
                                      } else {
                                        print('Login Failed');
                                        // make an alert to the user says that login failed
                                      }  
                                  },
                                  child: Container(
                                    child: isloding? CircularProgressIndicator(color: Colors.white,) : Text(
                                      'LOGIN',
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Don\'t have an account?',
                                  ),
                                  TextButton(
                                    onPressed: () {
                                        Navigator.push(context,MaterialPageRoute(builder: (context) =>SignUp()));
                                      },
                                    child: Text(
                                      'Register Now',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 1, 152, 116),
                                      ),
                                    ),
                                  ),
                                ],
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
