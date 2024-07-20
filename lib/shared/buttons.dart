import 'dart:async';

import 'package:biac/imageHandle/image.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable

class homeButton extends StatelessWidget {
   homeButton({
    required this.color,
    required this.text,
    required this.imageContainer,
    Key? key,
  }):super(key: key);
late AssetImage imageContainer;
late Color color;
late String text;
  dynamic get graycolor => Color.fromARGB(255, 187, 187, 187);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    
    return  
     Container(
                        width: screenwidth / 2.5,
                        height: screenheight / 15,
                        decoration: BoxDecoration(
                          color: graycolor,
                              boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.all(Radius.circular(90)
                                      ),
                                      ),
                                      child:Row(
                                        children: [
                                          Container(width: 55,height: 55,
                                           decoration: BoxDecoration(
                                            color: color,
                                                boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey.withOpacity(0.5),
                                                          spreadRadius: 5,
                                                          blurRadius: 7,
                                                          offset: Offset(0, 3), // changes position of shadow
                                                        ),
                                                      ],
                                                        borderRadius: BorderRadius.all(Radius.circular(90)
                                                        ),
                                                        ),
                                                      child: Image(image: imageContainer
                                                      ,color: Color.fromARGB(255, 0, 0, 0),
                                                      height: 8,
                                                      width: 8,),
                                                      
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(11),
                                            child: Text(text,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            ),
                                          ),
                                        ],
                                      ),);

  }
}