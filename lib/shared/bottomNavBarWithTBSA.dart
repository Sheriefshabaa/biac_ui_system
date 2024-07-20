import 'package:biac/TBSA/TBSAPage.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/dialUp.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/user/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';


// ignore: must_be_immutable

class bottomNavBarWithTBSA extends StatefulWidget {
   bottomNavBarWithTBSA({
    Key? key,
  }):super(key: key);

  @override
  State<bottomNavBarWithTBSA> createState() => _bottomNavBarWithTBSAState();
}

class _bottomNavBarWithTBSAState extends State<bottomNavBarWithTBSA> {
  List Screens=[
    profile(),
    user_page2(),
    TBSAPage(),
    dialup(),
   
  ];
  int _selectedindex = 1;



Uri dialnumber = Uri(scheme: 'tel',path: '01555022787');

 callNumber()async{
  await launchUrl(dialnumber);
}
 

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 

    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(
        height: screenheight/15,
        color: graycolor,
        buttonBackgroundColor: greencolor,
        backgroundColor: Colors.white,
         items: const <Widget>[
              Icon(Icons.person, size: 25),
              Icon(Icons.home, size: 25),
              Icon(Icons.lock_open, size: 25),
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
  
  dynamic get graycolor => Color.fromARGB(255, 187, 187, 187);
     dynamic get greencolor => HexColor("1EBD9D");

   
}

