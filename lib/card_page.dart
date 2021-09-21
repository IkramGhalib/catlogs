import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'home.dart';


class Card_Page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: SplashScreenView(
        navigateRoute: Home(),
    duration: 3000,
    imageSize: 130,
    imageSrc: "assets/images/login.png",
    text: "Welocme to Home Screen",
    textType: TextType.ScaleAnimatedText,

    textStyle: TextStyle(
    fontSize: 30.0,),
    colors: [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    ],



      // AnimatedSplashScreen(
      //   duration: 3000,
      //   splash: Image.asset("assets/images/login.png"),
      //   nextScreen: Home(),
      //   splashTransition: SplashTransition.rotationTransition,
      //   // pageTransitionType: PageTransitionType.scale,
      //   backgroundColor: Colors.white,
      //
      ),
    );
  }
}


//
// class Card_Page extends StatelessWidget {
//   const Card_Page({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final double height=MediaQuery.of(context).size.height;
//     final double width=MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           Container(
//             height: 230,
//             decoration: BoxDecoration(color: Colors.blue,
//                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
//             child: Stack(
//               children: [
//               Positioned(
//                 top:80,
//                 left: 0,
//                 child: Container(
//                   height: 100,
//                   width: 300,
//                   decoration: BoxDecoration(color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topRight: Radius.circular(50),
//                       bottomRight: Radius.circular(50))),
//                 ),
//               ),
//                 Positioned(
//                   top: 115,
//                     left: 30,
//                     child: Text("Your Names"))
//             ],),
//           ),
//
//           SizedBox(height: 50,),
//
//           Container(
//             height: 230,
//             child: Stack(
//               children: [
//                 Positioned(
//                     child: Material(
//                       child: Container(
//                         height: 188.0,
//                         width: width*0.2,
//                         color: Colors.white70,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                                 bottomRight: Radius.circular(50))),
//                       ),
//                     ))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
