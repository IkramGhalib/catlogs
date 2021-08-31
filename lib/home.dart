import 'package:ecomerce/widgets/drawer.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        // iconTheme: IconThemeData(color: Colors.yellow),
        title: Text("Design App"),
      ),
      body: Center(
        child: Container(
          child: (Text('Welcome to Home Page')
          ),
        ),

      ),
      drawer: MyDrawer(),


    );

  }
}
