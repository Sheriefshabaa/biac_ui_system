import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:biac/getStarted.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class splachScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:
            AnimatedSplashScreen(
                 
              duration: 2500,
            splashIconSize: 120,
            backgroundColor: greencolor,
            splashTransition: SplashTransition.fadeTransition,
            splash: Column(
              children: [
                 Image(image: AssetImage("assets/images/logo2.png"),),

                // Image(image: AssetImage("assets/images/splachtext.png"),),
                 
                
              ],
            ), 
            nextScreen:  getStarted()
            ),
    )
    ;
  }
    dynamic get greencolor => HexColor("1EBD9D");

}
