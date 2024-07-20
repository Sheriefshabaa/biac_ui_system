import 'package:biac/shared/degreePage.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ThirdDegree extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return degreePage(degreeNumber: "Third Degree Burn :")
    ;
  }
}
