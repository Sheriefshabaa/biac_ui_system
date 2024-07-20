import 'package:biac/imageHandle/image.dart';
import 'package:biac/Registration/login.dart';
import 'package:biac/services/registrationservice.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/emailContainer.dart';
import 'package:biac/shared/passwordContainer.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  var userName = TextEditingController();
  var firstName = TextEditingController();
  var lastName = TextEditingController();
  var emailController = TextEditingController();
  var passwordController1 = TextEditingController();
  var passwordController2 = TextEditingController();


  bool isloding = false;

  double spread = 4;
  double blur = 10;

  bool secureText1 = true;
  bool secureText2 = true;

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage('assets/images/Frame.png'),
                      width: screenwidth / 2,
                      height: screenheight / 4.8,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 60),
                    child: Image(
                      height: screenheight / 15,
                      width: screenwidth / 2,
                      image: AssetImage('assets/images/logo2.png'),
                      color: HexColor("#5CBAA7"),
                      alignment: Alignment.topRight,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              SingleChildScrollView(
                child: Container(
                  width: screenwidth,
                  height: screenheight,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: spread,
                          blurRadius: blur,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Color.fromARGB(255, 230, 230, 230)),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 1,
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Register With Us !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 1,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 33,
                        ),
                                Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: spread,
                                  blurRadius: blur,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: userName,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Enter your user name',
                              prefixIcon: Icon(
                                Icons.supervisor_account_sharp,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: spread,
                                  blurRadius: blur,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: firstName,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Enter your first name',
                              prefixIcon: Icon(
                                Icons.supervisor_account_sharp,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: spread,
                                  blurRadius: blur,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: lastName,
                            onFieldSubmitted: (String value) {
                              print(value);
                            },
                            onChanged: (String value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Enter your last name',
                              prefixIcon: Icon(
                                Icons.supervisor_account_sharp,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        emailContainer(emailController: emailController,),
                        SizedBox(
                          height: 23,
                        ),
                        passwordContainer(
                          passwordController: passwordController1,
                          secureText: secureText1,
                          iconButton: IconButton(
                            onPressed: () {
                              setState(() {
                                secureText1 = !secureText1;
                              });
                            },
                            icon: Icon(!secureText1
                                ? Icons.visibility_off
                                : Icons.remove_red_eye),
                          ),
                          lable: 'Enter your password',
                        ),
                        SizedBox(
                          height: 23,
                        ),
                        passwordContainer(
                          passwordController: passwordController2,
                          secureText: secureText2,
                          iconButton: IconButton(
                            onPressed: () {
                              setState(() {
                                secureText2 = !secureText2;
                              });
                            },
                            icon: Icon(!secureText2
                                ? Icons.visibility_off
                                : Icons.remove_red_eye),
                          ),
                          lable: 'Confirm your password',
                        ),
                        SizedBox(
                          height: 33,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset:
                                      Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color: Color.fromARGB(255, 1, 152, 116),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          width: double.infinity,
                          child: MaterialButton(
                            onPressed: () async {
                              setState(() {
                                        isloding = true;
                                      });
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => bottomNavBar()));
                              dynamic result = await registerUser(userName.text,firstName.text, lastName.text,emailController.text,
                                  passwordController1.text, passwordController2.text);
                                   if (result == true) {
                                          print('Registration Successful');
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen()));
                                        } else {
                                          print('Registration Failed');}
                              print(result);
                              print(firstName);
                              print(lastName);
                                  // result should be viewed in notification
                              
                            },
                            child: Container(
                              child:isloding? CircularProgressIndicator(color: Colors.white,) : Text(
                                'Sign Up',
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
                              'Already have an account?',
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                'Sign in',
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
    );
  }
}
