import 'package:biac/imageHandle/image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// ignore: must_be_immutable

class historyContainer extends StatelessWidget {
   historyContainer({
    required this.containerText,
    required this.containerText2,

    required this.imageContainer,
    Key? key,
  }):super(key: key);
late String imageContainer;
late String containerText;
late String containerText2;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width; 

    return Container(
      

                        width: screenwidth / 1.1,
                        height: 95,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 219, 219),
                              boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
                                        spreadRadius: 0,
                                        blurRadius: 0,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.all(Radius.circular(25)
                                      ),
                                      ),
                                    child: Row(
                                      children: [
                                        Container(
                                      //     decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.all(Radius.circular(5)),),
                                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                          child: Image.network( imageContainer,
                                          // height: 100,
                                          width: 95,),                                    
                                        ),
                                        Container(
                                          width: screenwidth/1.2 - 100,
                                          child: Column(
                                            children: [
                                              
                                              Container(
                                                margin: EdgeInsets.fromLTRB(10.0,10.0, 120.0, 0.0),
                                                child: Text(containerText,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600
                                                  ),
                                                                                    ),
                                              ),
                                              
                                              Container(
                                                margin: EdgeInsets.fromLTRB(15.0,4.0, 40.0, 0.0),
                                                child: Text(containerText2,
                                              
                                                  style: TextStyle(
                                                    color: const Color.fromARGB(255, 81, 81, 81),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400
                                                  ),
                                                                                    ),
                                              ),
                                              SizedBox(
                                                height: 0,
                                              ),
                                          //     Row(
                                          //       children: [
                                          //         SizedBox(
                                          //           width: 100,
                                          //         ),
                                          //         Container(
                                          //           alignment: Alignment.bottomRight,
                                          //           width: 100,
                                          //           height: 30,
                                          //           decoration: BoxDecoration(
                                          //              color: Color.fromARGB(255, 219, 219, 219),
                                          //               boxShadow: [
                                          //                       BoxShadow(
                                          //                         color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
                                          //                         spreadRadius: 2,
                                          //                         blurRadius: 10,
                                          //                         offset: Offset(0, 3), // changes position of shadow
                                          //                       ),
                                          //                     ],
                                          //                       borderRadius: BorderRadius.all(Radius.circular(10)
                                          //           )),
                                          //         ),
                                          //       ],
                                          //     ),
                                          // SizedBox(height: 10,)
                                            ],
                                          
                                          ),
                                        ),
                                        ],
                                    ),
    );
  }
}
