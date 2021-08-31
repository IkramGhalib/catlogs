import 'package:ecomerce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'login.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Design Theme",
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      // home: Drawer(),
      // initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/":(context)=>Login(),
        MyRoutes.loginRoutes:(context)=>Login(),
        MyRoutes.homeRoutes:(context)=>Home()
      },
    );
  }
}
