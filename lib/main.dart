import 'dart:math';
import 'package:biac/Password/sentcode.dart';
// import 'package:biac/Registration/completeprofile.dart';
// import 'package:biac/Registration/volunteerregistration.dart';
import 'package:biac/TBSA/TBSAPage.dart';
import 'package:biac/TBSA/TBSAResult.dart';
import 'package:biac/TBSA/captureBurn.dart';
import 'package:biac/TBSA/capturePhoto.dart';
import 'package:biac/TBSA/credit.dart';
import 'package:biac/TBSA/patientdata.dart';
import 'package:biac/TBSA/review.dart';
import 'package:biac/Volunteer/volunteeracting.dart';
import 'package:biac/Volunteer/volunteerpage.dart';
import 'package:biac/allowlocation.dart';
import 'package:biac/caseDetails.dart';
import 'package:biac/dialUp.dart';
import 'package:biac/drawer/drawerbeforelogin.dart';
import 'package:biac/homePages/userpagewithoutlogin.dart';
import 'package:biac/passwordmanager.dart';
import 'package:biac/services/loginservice.dart';
import 'package:biac/shared/bottomNavBar.dart';
import 'package:biac/shared/bottomNavBarWithTBSA.dart';
import 'package:biac/totryanything/1.dart';
import 'package:biac/DegressInformation/FirstDegree.dart';
import 'package:biac/DegressInformation/FourthDegree.dart';
import 'package:biac/DegressInformation/SecondDegree.dart';
import 'package:biac/homePages/expertPage.dart';
// import 'package:biac/History.dart';
import 'package:biac/Password/ResetPassword.dart';
import 'package:biac/details.dart';
// import 'package:biac/drawer/drawer.dart';
import 'package:biac/Password/forgotPassword.dart';
import 'package:biac/user/editProfile.dart';
import 'package:biac/getStarted.dart';
import 'package:biac/splach/splachScreen.dart';
import 'package:biac/TBSA/tbsaconfirm.dart';
import 'package:biac/TBSA/tbsapay.dart';
import 'package:biac/homePages/volunteerPage.dart';
import 'package:biac/user/profile.dart';
import 'package:biac/user/volunteerprofile.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:biac/Registration/login.dart';
import 'package:biac/Registration/signup.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:biac/imageHandle/image.dart';
import 'package:flutter/material.dart';
import 'package:biac/DegressInformation/FirstDegree.dart';
void main() async{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home:  splachScreen(),
    ); 
   }
}