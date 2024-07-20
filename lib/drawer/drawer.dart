import 'package:biac/History.dart';
import 'package:biac/Registration/volunteerregistration.dart';
import 'package:biac/TBSA/patientdata.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/Volunteer/volunteerpage.dart';
import 'package:biac/homePages/volunteerPage.dart';
import 'package:biac/services/historyservice.dart';
import 'package:biac/services/logoutservic.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/user/editProfile.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/Registration/registretion.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/userpagewithoutlogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';

class drawer extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: greencolor,
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("doha elsawy",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255)
                ),),
                accountEmail: Text("elsawidoha@gmail.com",
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255)
                ),),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/profileempty.jpg"),
                ),
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/background.png"),
                  //   fit: BoxFit.fill,
                  // ),
                  // color: greencolor
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
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => bottomNavBar()));
                      },
                    ),
                  
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                  leading: Icon(Icons.account_circle),
                  title: Text("Edit Profile"),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => editProfile()));
                  },
                ),
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 252, 251, 251),
                  leading: Icon(Icons.history),
                  title: Text("History"),
                  onTap: () async{
                    
                    await  fetchUsearData();
                    // await fetchUsearData(1);
                    Navigator.push(context,MaterialPageRoute(builder: (context) => History()));
                  },
                ),
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                  leading: Icon(Icons.account_box_rounded),
                  title: Text("About us"),
                  onTap: () {
                    print(imageworking);
                        
                  },
                ),
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                  leading: Icon(Icons.app_registration_sharp),
                  title: Text("registration"),
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => registration()));
                  },
                ),
                
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                  leading: Icon(Icons.person_2),
                  title: Text("TBSA"),
                  onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => tbsasubscribepage1()));
          
                  },
                ),
          
                ListTile(
                      iconColor: Color.fromARGB(255, 253, 253, 253),
                      textColor: Color.fromARGB(255, 255, 255, 255),
                  leading: Icon(Icons.volunteer_activism),
                  title: Text("volunteer membership"),
                  onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => volunteerregistration()));
          
                  },
                ),
                
                ListTile(
                      iconColor: Color.fromARGB(255, 255, 255, 255),
                      textColor: Color.fromARGB(255, 255, 255, 255),
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
                                                      
                                                      child: MaterialButton(onPressed: () async{ 
                                                        bool success = await logout(); // replace with your actual token

                                                        if (success) {
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => userpage_withoutlogin()));
                                                        } else {
                                                          print('Failed to log out');
                                                          // Handle the failure case as needed
                                                        }
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
        ),
    );
  }
    dynamic get greencolor => HexColor("1EBD9D");

}
