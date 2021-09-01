import 'package:ecomerce/models/catlogs.dart';
import 'package:ecomerce/widgets/drawer.dart';
import 'package:ecomerce/widgets/items_widget.dart';
import 'package:flutter/material.dart';

import 'models/catlogs.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummylist =List.generate(50, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        // iconTheme: IconThemeData(color: Colors.yellow),
        title: Text("Design App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(itemCount: dummylist.length, 
          itemBuilder: (BuildContext context, int index) { 
          return ItemsWidget(items: dummylist[index]);


    },
    ),
      ),
        // child: ListView.builder(itemCount: CatlogModel.items.length,
        //   itemBuilder: (BuildContext context, int index) {
      //     return ItemsWidget(items: CatlogModel.items[index],);
      //     },),
      // ),
      // Container(
      //   height: 300,
      //   width: 300,
      //   constraints: BoxConstraints(
      //     maxWidth: 400,
      //     minHeight: 70,
      //     maxHeight: 400,
      //     minWidth: 40,
      //   ),
      //   color: Colors.blue,
      // ),
      // #max width and height
      // Container(
      //   constraints: BoxConstraints(
      //     maxHeight: 200.0,
      //     minHeight: 50.0,
      //     minWidth: 50,
      //     maxWidth: 200,
      //   ),
      //   // height: 400,
      //   // width: 400,
      //   color: Colors.green,
      //   child: Container(
      //     height: 5,
      //     width: 5,
      //     color: Colors.red,
      //   ),
      // ),
      // #using column parent size constrain, constrain down
      // Column(
      //   children: [
      //     Container(
      //     width: 100,
      //     height: 100,
      //     color: Colors.red,
      //     child: (Text('Welcome to Home Page')
      //     ),
      //   ),],
      // ),
      drawer: MyDrawer(),


    );

  }
}
