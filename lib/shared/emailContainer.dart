import 'package:flutter/material.dart';
// ignore: mustbe_immutable

class emailContainer extends StatelessWidget {
  emailContainer({
    required this.emailController,
    Key? key,
  }) : super(key: key);
  TextEditingController emailController = TextEditingController();

  String? validateEmail(String? email) {
    RegExp emailRegex =
        RegExp(r'^([a-zA-Z0-9.%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,})$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return '            please enter valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validateEmail,
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          onFieldSubmitted: (String value) {
            // print(value);
          },
          onChanged: (String value) {
            // print(value);
          },
          decoration: InputDecoration(
            labelText: 'Email Address',
            prefixIcon: Icon(
              Icons.email,
            ),
            border: InputBorder.none,
          ),
        ));
  }
}
