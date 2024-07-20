import 'package:biac/History.dart';
import 'package:biac/services/firstaidservice.dart';
import 'package:biac/services/pdfservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
// ignore: must_be_immutable
class caseDetails extends StatelessWidget {
  

  List<dynamic> firstaidprocedure = firstaidData["firstAidsList"];
 
 
  @override
  Widget build(BuildContext context) {
    
    final screenheight = MediaQuery.of(context).size.height; 
    final screenwidth = MediaQuery.of(context).size.width;
    final int degree = 3;
    return Scaffold(
      body:  SingleChildScrollView(
          child: Center(
              child: Container(
                color: greencolor,
                    
                child: Column(
                  children: [
                    Container(
                      height: 115,
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                                  width: 50,
                                  height: 40,
                                  alignment: Alignment.topLeft,
                                  child: IconButton( 
                                    iconSize: 35,
                                    color: const Color.fromARGB(255, 36, 34, 34),
                                    highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                                    icon: Icon(Icons.arrow_back_ios_new_outlined), 
                                    onPressed: () 
                                    {
                                      Navigator.push(context,MaterialPageRoute(builder: (context) =>History()));
                                      }, ),
                                ),
                        ],
                      ),
                    ),
                    //Burn Severity Type :
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            height: screenheight,
                            decoration: BoxDecoration(
                              color: Colors.white,
                                  boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 4,
                                        blurRadius: 10,
                                        offset: Offset(0, 3), // changes position of shadow
                                      ),
                                    ],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                            ),
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.network( (imageworking),width: 200,height: 140,),
                                  ],
                                )
                                ,
                
                              Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 400,
                            child: Text("Model's Result",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight:FontWeight.bold 
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("Burn Degree : ",
                            style: TextStyle(
                              color: greencolor,
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                            // height: 100,
                            width: screenwidth,
                            
                            child: Text("${burndegreecase}",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),

                           Container(
                            margin: EdgeInsets.fromLTRB(3, 10, 10, 10),
                            width: screenwidth,
                            child: Text("First Aid Instructions :",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                              color: greencolor,
                              fontSize: 20,
                              fontWeight:FontWeight.w600 
                            ),
                            ),
                          ),
                           for (var i = 0; i < firstaidprocedure.length; i++)
                           Column(
                            children: [
                              Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                            width: screenwidth,
                            child: Text("${i+1}-${firstaidprocedure[i]["procedure"]}",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight:FontWeight.w500 
                            ),
                            ),
                          ),
                            ],
                           ),

                         
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("1.Cooling the affected area with cool water for 10-15 minutes to relieve pain and reduce swelling.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("2.Covering the burn with a clean, dry cloth.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("3.Avoiding the use of ice or oily substances like butter or creams.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("4.Avoiding peeling off damaged skin.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("5.Taking a pain reliever such as paracetamol or ibuprofen if necessary.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          // Container(
                          //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          //   width: screenwidth,
                          //   child: Text("6.Ensuring the burn is cleaned to prevent infection.",
                          //   textAlign: TextAlign.justify,
                          //   style: TextStyle(
                          //     fontSize: 17,
                          //     fontWeight:FontWeight.w500 
                          //   ),
                          //   ),
                          // ),
                          Container(
                                height: screenheight/20,
                                margin: EdgeInsets.fromLTRB(40.0,0.0, 40.0, 0.0),
                                decoration: BoxDecoration(
                                   boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 4,
                                    blurRadius: 10,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                color: greencolor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                  )
                                ),
                                width: double.infinity,
                                child: MaterialButton(
                                  
                                  onPressed: () async{
                                    await downloadPdf();
                                    print("down");
                                      // Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage_withoutlogin()));
                                      
                                  },
                                  child: Container(
                                    child: Text(
                                      'Download PDF',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      )
    ;
  }
      dynamic get greencolor => HexColor("1EBD9D");

}
