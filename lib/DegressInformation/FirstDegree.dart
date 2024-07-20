import 'package:biac/shared/degreePage.dart';
import 'package:biac/homePages/user_page2.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class FirstDegree extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return degreePage(degreeNumber: "degreeNumber");  }
}
