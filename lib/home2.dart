import 'dart:convert';

import 'package:ecomerce/pages/home_widget/catalog_list.dart';
import 'package:ecomerce/pages/home_widget/home_widget.dart';
import 'package:ecomerce/utils/colors.dart';
import 'package:ecomerce/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home.dart';
import 'login.dart';
import 'models/catlogs.dart';


class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  //bottom bar
  //end bottom bar
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
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, MyRoutes.CartRoutes);
      },child: Icon(Icons.shopping_cart),),
      // appBar: AppBar(
      //   title: Text("Home Dashboard"),
      // ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatlogModel.items!=null && CatlogModel.items.isEmpty)
                CatalogList().py32().expand()
              else
                Center(child: CatalogList().expand(),)

                // Center(child: CircularProgressIndicator(),)

            ],
          ),

        ),

      ),

    );
  }
}


//catalog image
