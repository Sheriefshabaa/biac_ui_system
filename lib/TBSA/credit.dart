import 'dart:math';
import 'package:biac/TBSA/tbsapay.dart';
import 'package:flutter/material.dart';

class credit extends StatefulWidget {
  @override
  _creditState createState() => _creditState();
}

class _creditState extends State<credit> {
  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Credit',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:
          [
            Container(
              height: 170,
              child: Expanded(
                child: Container(
              
                  
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Image(
                              image: AssetImage('assets/images/paypal.png'),
                              height: 80.0,
                              width: 100.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? Color.fromARGB(255, 1, 152, 116) : Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = false;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Image(
                              image: AssetImage('assets/images/Group.png'),
                              height: 80.0,
                              width: 100.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ? const Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 1, 152, 116),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Image(
                              image: AssetImage('assets/images/amex.png'),
                              height: 80.0,
                              width: 100.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ?Color.fromARGB(255, 1, 152, 116) : const Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMale = true;
                            });
                          },
                          child: Container(
                            height: 80,
                            child: Image(
                              image: AssetImage('assets/images/visa.png'),
                              height: 80.0,
                              width: 100.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              color: isMale ?Color.fromARGB(255, 1, 152, 116) : Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
        
          SizedBox(height: 20,),
            Container(
                              margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                              decoration: BoxDecoration(
                                 boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: TextFormField(
                              keyboardType: TextInputType.text,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                labelText: 'cardHolder name',
                                prefixIcon: Icon(
                                  Icons.credit_card_outlined,
                                ),
                                border:InputBorder.none,
                              ),
                                                          ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                              decoration: BoxDecoration(
                                 boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: TextFormField(
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                labelText: 'creditCard number',
                                prefixIcon: Icon(
                                  Icons.credit_card_outlined,
                                ),
                                border:InputBorder.none,
                              ),
                                                          ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
                                  decoration: BoxDecoration(
                                     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30)
                                    )
                                  ),
                                  child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'Exp month',
                                    prefixIcon: Icon(
                                      Icons.date_range_outlined,
                                    ),
                                    border:InputBorder.none,
                                  ),
                                                              ),
                                ),
                                Container(
                                  width: 165,
                              margin: EdgeInsets.fromLTRB(0.0,0.0, 20.0, 0.0),
                              decoration: BoxDecoration(
                                 boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30)
                                )
                              ),
                              child: TextFormField(
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (String value) {
                                print(value);
                              },
                              onChanged: (String value) {
                                print(value);
                              },
                              decoration: InputDecoration(
                                labelText: 'Exp year',
                                prefixIcon: Icon(
                                  Icons.date_range_outlined,
                                ),
                                border:InputBorder.none,
                              ),
                                                          ),
                            ),
                              ],
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Container(
                                  width: 165,
                                  margin: EdgeInsets.fromLTRB(20.0,0.0, 210.0, 0.0),
                                  decoration: BoxDecoration(
                                     boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30)
                                    )
                                  ),
                                  child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  onFieldSubmitted: (String value) {
                                    print(value);
                                  },
                                  onChanged: (String value) {
                                    print(value);
                                  },
                                  decoration: InputDecoration(
                                    labelText: 'CVC',
                                    prefixIcon: Icon(
                                      Icons.credit_card,
                                    ),
                                    border:InputBorder.none,
                                  ),
                                                              ),
                                ),
        
        
        
            SizedBox(
              height: 159,
            ),
        
            Container(
              width: double.infinity,
             color: Color.fromARGB(255, 1, 152, 116),
              child: MaterialButton(
                onPressed: () {
        
                  Navigator.push(context,MaterialPageRoute(builder: (context) =>tbsapay()));
                                    
                    
                
                },
                height: 60.0,
                child: Text(
                  'Confirm',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// var result = weight / pow(height / 100, 2);
// print(result.round());
}