import 'package:biac/imageHandle/image.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable

class passwordContainer extends StatelessWidget {
  passwordContainer({
    required this.passwordController,
    required this.secureText,
    required this.iconButton,
    required this.lable,
    Key? key,
  }):super(key: key);
TextEditingController passwordController;
bool secureText;
IconButton iconButton;
String lable;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                              decoration: BoxDecoration(
                                boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 4,
                                  blurRadius: 10,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: TextFormField(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator:(value) =>
                                value!.length <8 ? '            pass Should be at least 8 char' : null,
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: secureText,
                                onFieldSubmitted: (String value) {
                                  print(value);
                                },
                                onChanged: (String value) {
                                  print(value);
                                },
                                decoration: InputDecoration(
                                  labelText: lable,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                  ),
                                  suffixIcon: iconButton,
                                  border: InputBorder.none,
                                ),
                              ),    );
  }
}
