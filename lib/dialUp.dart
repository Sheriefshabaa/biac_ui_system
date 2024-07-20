import 'package:biac/imageHandle/image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// openDialPad(String phoneNumber) async {
//     Uri url = Uri(scheme: "tel", path: phoneNumber);
//     if (await canLaunchUrl(url)) {
//       await launchUrl(url);
//     } else {
//        print("Can't open dial pad.");
//     }
// }

// class dialup extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }


 

class dialup extends StatefulWidget {
  dialup({Key? key}) : super(key: key);

  _dialupState createState() => _dialupState();
}

class _dialupState extends State<dialup> {


Uri dialnumber = Uri(scheme: 'tel',path: '123');
callNumber()async{
  await launchUrl(dialnumber);
      }
  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width; 

    return Scaffold(
      body: SingleChildScrollView(
        child: InkWell(
          child: Center(
            child: Container(
              height: screenheight / 1.09,
              color: Colors.white,
              child: Column(
                children: [
                  // InkWell(child: Container(alignment: Alignment.center,height: 100,),),
                  SizedBox(height: screenheight / 2.5,),
                  AnimatedTextKit(animatedTexts: [
                              ScaleAnimatedText(
                              'Click',
                              textStyle: const TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
      ),
    ),
  ],),
                  Text("Click To Call A Burn Hospital",
                  
                  style: TextStyle(
                    fontSize: 28
                    ,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                  ),
                  Image(image: AssetImage("assets/images/click.png"),width: 120,)
                ],
              ),
            ),
          ),
          onTap: () {
            callNumber();
          },
        ),
      ),
    );
  }


}
