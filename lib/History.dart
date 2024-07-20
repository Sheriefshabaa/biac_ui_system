import 'package:biac/caseDetails.dart';
import 'package:biac/drawer/drawer.dart';
import 'package:biac/services/Api.dart';
import 'package:biac/services/firstaidservice.dart';
import 'package:biac/services/historyservice.dart';
import 'package:biac/shared/historyContainer.dart';
import 'package:biac/shared/nav.dart';
import 'package:flutter/material.dart';


// List<dynamic> firstaidprocedure = firstaidData["firstAidsList"];
int userid = 0;

String burndegreecase = '';

String imageworking="${Api().baseUrl +"/results" + user[0]['classified_images'][0]['image_with_model_classification']}";

 List<dynamic> user = userData;

// ignore: depend_on_referenced_packages
// ignore: must_be_immutable

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  history(),
    );
  }
}

class history extends StatefulWidget {
  @override
  State<history> createState() => _history();
}

class _history extends State<history> {
  
 var scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 

    return Scaffold(
      key: scaffoldKey,
      drawer: drawer(),
      
      body:  SingleChildScrollView(
        
          child: Column(
            children: [
              Column(
                children: [
                  nav(text: "History", 
              fontsize: 32, 
              f: IconButton( 
                        iconSize: 35,
                        color: Colors.white,
                        highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                        icon: Icon(Icons.menu_sharp),
                         onPressed: () => scaffoldKey.currentState?.openDrawer()),endsizedbox: 0,containerheight: screenheight /3.7),
                    ],
                      
                  ),
                    
                
        SingleChildScrollView(

          
          
          child: Column(
          
          children: [

              for (var i = 0; i < user.length; i++)
              for (var j = 0; j < user[i]['classified_images'].length; j++)
              Column(
                children: [
                  SizedBox(
                height: 10,)
                ,
                  InkWell(
                    child: historyContainer(containerText: " ${user[i]['classified_images'][j]['burn_degree']} ",containerText2:"${user[i]['captured_at']}",
                     imageContainer: "${Api().baseUrl +"/results" + user[i]['classified_images'][j]['image_with_model_classification']}"
                     ),
                    onTap: () async{
                      //userid = i-13;
                      
                      userid = i;
                      await fetchfirstaid();
                      await firstaidData;

                      print(user[i].length);
                      burndegreecase = user[i]['classified_images'][j]['burn_degree'];

                      imageworking = "${Api().baseUrl +"/results" + user[i]['classified_images'][j]['image_with_model_classification']}";
                      print("object");
                      print(userid);
                      print(imageworking);

                      String degree = user[i]['classified_images'][j]['burn_degree'];
                      print(degree);
                      print("${Api().baseUrl +"/results" + user[i]['classified_images'][j]['image_with_model_classification']}");
                            
                            Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                                //  print(firstaidData);
                                  },
                  ),
                  SizedBox(
                height: 20,)
                ,
                  
                 ],
              ),



              // InkWell(
              //       child: Container(
      

              //           width: screenwidth / 1.1,
              //           height: 95,
              //           alignment: Alignment.center,
              //           decoration: BoxDecoration(
              //             color: Color.fromARGB(255, 219, 219, 219),
              //                 boxShadow: [
              //                         BoxShadow(
              //                           color: const Color.fromARGB(255, 120, 120, 120).withOpacity(0.5),
              //                           spreadRadius: 0,
              //                           blurRadius: 0,
              //                           offset: Offset(0, 3), // changes position of shadow
              //                         ),
              //                       ],
              //                         borderRadius: BorderRadius.all(Radius.circular(25)
              //                         ),
              //                         ),
              //                       child: Row(
              //                         children: [
                                        
              //                           Container(
              //                                  child:  Image.network("${imageworking}",width: 70,),
              //                                 ),
              //                           // Container(
              //                           //   child: Image.network( imageContainer.toString(),
              //                           //   height: 100,
              //                           //   width: 100,),                                    
              //                           // ),
              //                           Container(
              //                             width: screenwidth/1.2 - 100,
              //                             child: Column(
              //                               children: [
                                              
                                              
              //                                 Container(
              //                                   margin: EdgeInsets.fromLTRB(10.0,10.0, 120.0, 0.0),
              //                                   child: Text("containerText",
              //                                     style: TextStyle(
              //                                       fontSize: 20,
              //                                       fontWeight: FontWeight.w600
              //                                     ),
              //                                                                       ),
              //                                 ),
                                              
              //                                 Container(
              //                                   margin: EdgeInsets.fromLTRB(15.0,4.0, 40.0, 0.0),
              //                                   child: Text("containerText2",
                                              
              //                                     style: TextStyle(
              //                                       color: const Color.fromARGB(255, 81, 81, 81),
              //                                       fontSize: 12,
              //                                       fontWeight: FontWeight.w400
              //                                     ),
              //                                                                       ),
              //                                 ),
              //                                 SizedBox(
              //                                   height: 0,
              //                                 ),
              //                               ],
                                          
              //                             ),
              //                           ),
              //                           ],
              //                       ),
    
  
              //        ),
              //       onTap: () async{
              //         print(imageworking);
              //                     },
              //     ),



                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: AssetImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[0]['classified_images'][0]['burn_degree']} ",containerText2:"${user[0]['captured_at']}", imageContainer: AssetImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: " ${user[2]['classified_images'][0]['burn_degree']} ",containerText2:"${user[2]['captured_at']}", imageContainer: AssetImage("assets/images/DoctorRegister.png")),
                //     onTap: (){
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                //                   },
                //   ),
                // ),
                // SizedBox(
                // height: 30,)
                // ,
                // SizedBox(
                //   child: InkWell(
                //     child: historyContainer(containerText: "SSS ${user[16]['classified_images'][0]['burn_degree']} ",containerText2:"${user[16]['captured_at']}", imageContainer: NetworkImage("assets/images/DoctorRegister.png")),
                //     onTap: () async {
                //       await fetchfirstaid(5);
                //       print("object");
                //     print(firstaidData["firstAidsList"][0]["procedure"]);
                //             Navigator.push(context,MaterialPageRoute(builder: (context) =>caseDetails()));
                //                  },
                //   ),
                // ),
                SizedBox(
                height: 30,)
                
                ,
              ],
            ),
        )],)
          
      
      
       )) ;
  }
  
  Future<void> opendrawer() async {
    setState(() {
      scaffoldKey.currentState?.openDrawer();
    });
  }
  }
 

 // Container(
                  //   height: 250,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     image:DecorationImage(image: AssetImage("assets/images/background2.png"),fit:BoxFit.cover ),
                  //     boxShadow: [
                  //             BoxShadow(
                  //               color: Colors.grey.withOpacity(0.5),
                  //               spreadRadius: 5,
                  //               blurRadius: 7,
                  //               offset: Offset(0, 3), // changes position of shadow
                  //             ),
                  //           ],
                  //             borderRadius: BorderRadius.only(
                  //               bottomRight: Radius.circular(130),
                  //               bottomLeft: Radius.circular(130),
                  //             ),
                  //             ),
                  //   child: Column(
                  //     children: [
                  //       Expanded(
                  //         child: Row(
                  //           children: [
                  //               Container(
                  //                 width: 50,
                  //                 height: 105,
                  //                 alignment: Alignment.topLeft,
                  //                 child: IconButton( 
                  //                   iconSize: 35,
                  //                   color: Colors.white,
                  //                   highlightColor:  const Color.fromARGB(255, 141, 141, 141),
                  //                   icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  //                    onPressed: () {
                  //                     Navigator.push(context,MaterialPageRoute(builder: (context) =>userpage2()));
                  //                 }, ),
                  //               ),
                  //               Container(
                  //                 width: 337,
                  //                 height: 105,
                  //                 alignment: Alignment.topRight,
                  //                 child: Container(
                  //                   width: 60,
                  //                   height: 60,
                  //                   child: Image(image: AssetImage("assets/images/icon_splach.png")))
                  //               ),
                          
                  //           ]
                  //         ),
                          
                  //       ),
                  //     Container(
                    
                  //   child: Text('History',
                  //   style: TextStyle(fontSize: 32,
                  //   fontWeight: FontWeight.w500,
                  //   color: Colors.white,
                  // ),
                  //   ),
                  //   ),
                  //   SizedBox(
                  //     height: 20,
                  //   )

  
