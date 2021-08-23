import 'package:ecomerce/home.dart';
import 'package:ecomerce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      initialRoute: "/",
      routes: {
        MyRoutes.loginRoutes: (context)=>Login(),
        MyRoutes.homeRoutes: (context)=>Home(),
      },
      home: Login(),

    );
  }
}
