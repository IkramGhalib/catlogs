import 'dart:convert';

import 'package:ecomerce/models/catlogs.dart';
import 'package:ecomerce/widgets/drawer.dart';
import 'package:ecomerce/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/catlogs.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}
class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var json = await rootBundle.loadString("assets/file/");
    var decodeData= jsonDecode(json);
    //List required that convert fom map
    // List<Items> list = List.from(decodeData).map<Items>((item) => Items.fromJson(item)).toList();
   CatlogModel.items = List.from(decodeData).map<Items>((item) => Items.fromJson(item)).toList();
    // print(decodeData);
  }
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatlogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0,
        // iconTheme: IconThemeData(color: Colors.yellow),
        title: Text("Design App"),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        // (CatlogModel.items!=null && CatlogModel.items.isEmpty)?
            GridView.builder(
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                // mainAxisExtent: 16
              ),
              itemBuilder: (BuildContext context, int index){
                final item=CatlogModel.items[index];
                return Card(
                  clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                    child: GridTile(
                        header: Container(
                            child: Text(item.name),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(color: Colors.red),
                        ),
                        child: Image.asset(item.imageUrl),

                        footer: Container(
                            child: Text(item.price.toString()),
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(color: Colors.purple),
                        ),));
                
              },itemCount: CatlogModel.items.length,)
            // # LIST View Horizontal item show
    //     ListView.builder(itemCount: CatlogModel.items.length,
    //       itemBuilder: (BuildContext context, int index) {
    //       return ItemsWidget(items: CatlogModel.items[index]);
    // },
    // )
    //         :Center(child: CircularProgressIndicator(),)
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
