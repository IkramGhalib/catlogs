import 'package:ecomerce/home.dart';
import 'package:ecomerce/home2.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';


class BottomBar extends StatelessWidget {


   @override
   Widget build(BuildContext context) {
     return SafeArea(
       child: Scaffold(
         appBar: AppBar(
           title: Text("Welcome Bottom Bar"),
           backgroundColor: Colors.deepPurple,
         ),
         drawer: Drawer(),
         body: SpinCircleBottomBarHolder(
           bottomNavigationBar: SCBottomBarDetails(
             // iconTheme: IconThemeData(color: Colors.black),
             // activeIconTheme: IconThemeData(color: Colors.orange),
             // backgroundColor: Colors.white,
             //   circleColors: [Colors.white,Colors.yellow,Colors.green],
             //   actionButtonDetails: SCActionButtonDetails(
             //       icon: Icon(Icons.expand_less), elevation: 0, color: Colors.orange),
               items: [
                 SCBottomBarItem(icon: Icons.verified, onPressed: (){},title: "Home"),
                 SCBottomBarItem(icon: Icons.verified, onPressed: (){}),
                 SCBottomBarItem(icon: Icons.verified, onPressed: (){})
               ],
               circleItems: [
                 SCItem(icon: Icon(Icons.image), onPressed: () {  })
               ]),
           child: Center(
             child: Container(
             child: Text("Welomce"),
         ),
           ),
         ),
       ),
     );
   }
 }
