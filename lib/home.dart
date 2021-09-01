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
      body: Column(
        children: [
          Container(
          width: 100,
          height: 100,
          color: Colors.red,
          child: (Text('Welcome to Home Page')
          ),
        ),],
      ),
      drawer: MyDrawer(),


    );

  }
}
