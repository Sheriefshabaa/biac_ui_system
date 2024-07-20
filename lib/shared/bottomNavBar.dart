import 'package:biac/Registration/login.dart';
import 'package:biac/caseDetails.dart';
import 'package:biac/details.dart';
import 'package:biac/dialUp.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/user/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable

class bottomNavBar extends StatefulWidget {
   bottomNavBar({
    Key? key,
  }):super(key: key);

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  List Screens=[
    profile(),
    user_page2(),
    dialup(),
   
  ];
  int _selectedindex = 1;

//  Future<void> _makePhoneCall(String url) async {
//  // ignore: deprecated_member_use
//  if (await canLaunch(url)) {
//    // ignore: deprecated_member_use
//    await launch(url);
//  } else {
//    throw 'Could not launch $url';
//  }}


Uri dialnumber = Uri(scheme: 'tel',path: '123');

 callNumber()async{
  await launchUrl(dialnumber);
}
 

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 

    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        height: screenheight/15,
        color: graycolor,
        buttonBackgroundColor: greencolor,
        backgroundColor: Colors.white,
         items: const <Widget>[
              Icon(Icons.person, size: 25),
              Icon(Icons.home, size: 25),
              Icon(Icons.phone_enabled, size: 25),
            ],
            index: _selectedindex,
            onTap: (index) {
              setState(() {
                
                _selectedindex=index;
              }
              );
              
            },
      
           
      ),
      
      body: Screens[_selectedindex]
        );


            


    

  }
     dynamic get greencolor => HexColor("1EBD9D");
     
  dynamic get graycolor => Color.fromARGB(255, 187, 187, 187);

   
}



// bottomNavigationBar: CurvedNavigationBar(
//             color: Colors.white,
//             backgroundColor: HexColor("#5CBAA7"),
//             items: <Widget>[
//               Icon(Icons.add, size: 25),
//               Icon(Icons.list, size: 25),
//               Icon(Icons.compare_arrows, size: 25),
//             ],
//             onTap: (index) {
//               //Handle button tap
//             },
//           ),
//           bottomNavigationBar: Container(
//             color: Color.fromARGB(255, 148, 148, 148),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
//               child: GNav(
//                   backgroundColor: Color.fromARGB(255, 148, 148, 148),
//                   color: Color.fromARGB(255, 255, 255, 255),
//                   activeColor: Color.fromARGB(255, 0, 0, 0),
//                   tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
//                   gap: 8,
//                   padding: EdgeInsets.all(16),
//                   tabs: const [
//                     GButton(
//                       icon: Icons.home,
//                       text: 'Home',
//                     ),
//                     GButton(
//                       icon: Icons.login,
//                       text: 'login',
//                     ),
//                     GButton(
//                       icon: Icons.logout,
//                       text: 'logout',
//                     ),
//                     GButton(
//                       icon: Icons.signpost_outlined,
//                       text: 'signup',
//                     ),
//                   ]),
//             ),
//           );
