import 'package:biac/History.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/user/editProfile.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/Registration/registretion.dart';
import 'package:biac/Registration/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class drawerbeforelogin extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
           
              Container(
                height: 170,
              decoration: BoxDecoration(
                color: greencolor,
                image: DecorationImage(
                  image: AssetImage("assets/images/logo2.png"),
                  
                // ),
                
              ),
              
              ),),
            Container(
              height: 700,
              color: greencolor,

              child: Column(
                children: [
                  
              // ListTile(
              //       iconColor: const Color.fromARGB(255, 0, 0, 0),
              //       textColor: const Color.fromARGB(255, 0, 0, 0),
              //   leading: Icon(Icons.history),
              //   title: Text("History"),
              //   onTap: () {
              //     Navigator.push(context,MaterialPageRoute(builder: (context) => History()));
              //   },
              // ),
              ListTile(
                    iconColor: Color.fromARGB(255, 255, 255, 255),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                leading: Icon(Icons.account_box_rounded),
                title: Text("About us"),
                onTap: () {
                      
                },
              ),
              
              
              ListTile(
                    iconColor: Color.fromARGB(255, 255, 255, 255),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                leading: Icon(Icons.map),
                title: Text("Map"),
                onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => tbsasubscribepage1()));

                },
              ),
              ListTile(
                    iconColor: Color.fromARGB(255, 255, 255, 255),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                leading: Icon(Icons.login),
                title: Text("login"),
                onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()));

                },
              )
              ],
              ),
            ),
          ],
        ),
    );
  }
    dynamic get greencolor => HexColor("1EBD9D");

}
