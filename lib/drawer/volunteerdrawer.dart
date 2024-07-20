import 'package:biac/History.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/Volunteer/volunteerpage.dart';
import 'package:biac/homePages/volunteerPage.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/user/editProfile.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/Registration/registretion.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/userpagewithoutlogin.dart';
import 'package:biac/user/profile.dart';
import 'package:biac/user/volunteerprofile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class volunteerdrawer extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("kayroky",
              style: TextStyle(
                color: Colors.black
              ),),
              accountEmail: Text("Kayroky@gmail.com",
              style: TextStyle(
                color: Colors.black
              ),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                    "assets/images/photo.jpg"),
              ),
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage("assets/images/background.png"),
                //   fit: BoxFit.fill,
                // ),
                color: greencolor
              ),
              
            ),
            Container(
              height: 700,
          //     decoration: BoxDecoration(
          // image:DecorationImage(image: AssetImage("assets/images/background.png"),fit:BoxFit.cover ),
          //     ),

              child: Column(
                children: [
                  ListTile(
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => volunteerpage()));
                    },
                  ),
                
              ListTile(
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                leading: Icon(Icons.account_circle),
                title: Text("My Profile"),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => volunteerprofile()));
                },
              ),
              ListTile(
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                leading: Icon(Icons.switch_right_sharp),
                title: Text("Switch Account"),
                onTap: () {
                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => Center(
                                        child: Column(
                                              mainAxisAlignment :MainAxisAlignment.center,
                                                        
                                        
                                          children: [
                                            Image(image: AssetImage('assets/images/switchpop.png')),
                                            SizedBox(height: 10,),
                                            Container(
                                                    child: Text("Are you completely sure about wanting to switch?",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize:28,
                                                      fontWeight: FontWeight.w700
                                                    ),)
                                                  ),
                                                  SizedBox(height: 30,),
                                            // Image(image: AssetImage("assets/images/logout.jpg"),),
                                                  
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                                        decoration: BoxDecoration(
                                                          boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.5),
                                                            spreadRadius: 0,
                                                            blurRadius: 0,
                                                            offset: Offset(0, 3), // changes position of shadow
                                                          ),
                                                        ],
                                                        color: Color.fromARGB(255, 255, 255, 255),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(30)
                                                          )
                                                        ),
                                                        
                                                        
                                                        child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>volunteerpage()));
                                                        },
                                                        child:Container(
                                                          child: Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                              color: greencolor,
                                                            ),
                                                          ),
                                                        ),),
                                                      ),
                                                       Container(
                                                    margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey.withOpacity(0.5),
                                                        spreadRadius: 0,
                                                        blurRadius: 0,
                                                        offset: Offset(0, 3), // changes position of shadow
                                                      ),
                                                    ],
                                                    color: Color.fromARGB(255, 1, 152, 116),
                                                      borderRadius: BorderRadius.all(
                                                        Radius.circular(30)
                                                      )
                                                    ),
                                                    
                                                    
                                                    child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>bottomNavBar()));
                                                    },
                                                    child:Container(
                                                      child: Text(
                                                        'Confirm',
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 255, 255, 255),
                                                        ),
                                                      ),
                                                    ),),
                                                  ),
                                                    ],
                                                  ),
                                                  
                                                 
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  
                                        ],),
                                      ));},
              ),
              ListTile(
                    iconColor: const Color.fromARGB(255, 0, 0, 0),
                    textColor: const Color.fromARGB(255, 0, 0, 0),
                leading: Icon(Icons.logout_outlined),
                title: Text("logout"),
                onTap: () {
                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) => Center(
                                        child: Column(
                                              mainAxisAlignment :MainAxisAlignment.center,
                                                        
                                        
                                          children: [
                                            Container(
                                                    child: Text("Are you sure to logout?",
                                                    style: TextStyle(
                                                      fontSize:18,
                                                      fontWeight: FontWeight.w700
                                                    ),)
                                                  ),
                                            // Image(image: AssetImage("assets/images/logout.jpg"),),
                                                  
                                                  
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
                                                    
                                                    child: MaterialButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage_withoutlogin()));
                                                    },
                                                    child:Container(
                                                      child: Text(
                                                        'Logout',
                                                        style: TextStyle(
                                                          color: Color.fromARGB(255, 255, 255, 255),
                                                        ),
                                                      ),
                                                    ),),
                                                  )
                                        ],),
                                      ));
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
