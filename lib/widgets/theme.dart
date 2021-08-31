import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context)=>ThemeData(primarySwatch: Colors.red,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.red),
          textTheme: Theme.of(context).textTheme
      ),
      fontFamily: GoogleFonts.lato().fontFamily);



  static ThemeData darkTheme(BuildContext context)=>ThemeData(
  primarySwatch: Colors.red,
      brightness: Brightness.dark
      // fontFamily: GoogleFonts.lato().fontFamily)
  );
}