import 'package:biac/otp/controllers.dart';
import 'package:biac/otp/textfieldotp.dart';
import 'package:flutter/material.dart';

class TextOTP extends StatelessWidget {
  const TextOTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.amber,
      child: RichText(
          text: const TextSpan(children: [
        TextSpan(
            text: "Enter",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20)),
        TextSpan(
            text: " the code",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                fontSize: 25)),
        TextSpan(
            text: " sent to the number",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20))
      ])),
    );
  }
}