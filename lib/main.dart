
import 'package:ecomerce/pages/cart_details.dart';
import 'package:ecomerce/utils/routes.dart';
import 'package:ecomerce/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottom_bar.dart';
import 'card_page.dart';
import 'home.dart';
import 'home2.dart';
import 'login.dart';
import 'package:ecomerce/card_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Design Theme",
      themeMode: ThemeMode.light,
      //using Theme.dart to use different Theme
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      // home: Card(),
      // initialRoute: MyRoutes.SplashRoutes,
      routes: {
        // "/":(context)=>BottomBar(),
        "/":(context)=>Card_Page(),
        MyRoutes.loginRoutes:(context)=>Home(),
        MyRoutes.CartRoutes:(context)=>Cart()
      },
    );
  }
}
