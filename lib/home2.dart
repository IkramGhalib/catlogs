import 'dart:convert';

import 'package:ecomerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/catlogs.dart';


class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
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
                CatalogList().expand()
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
//Catalog Header
class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyColor.darkblue).make(),
        "Trending Product".text.xl2.make(),
      ],
    );
  }
}
//Catalog list

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.items.length,
      itemBuilder: (context,index){
      final catalog=CatlogModel.items[index];
      return CatalogItems(catalog: catalog,);
    },);
  }
}

class CatalogItems extends StatelessWidget{
  final Items catalog;

  const CatalogItems({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatlogImage(image: catalog.imageUrl),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.make(),
              catalog.desc.text.make(),

              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.bold.make(),
                  ElevatedButton(onPressed: (){

                  },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyColor.darkblue),
                        shape: MaterialStateProperty.all(StadiumBorder())
                      ),
                      child: "Buy".text.make())
                ],
              )

            ],
          ))


        ],
      )
    ).white.rounded.square(150).py16.make();
  }
}
//catalog image

class CatlogImage extends StatelessWidget {
  final String image;

  const CatlogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
       image).box.rounded.p16.color(MyColor.darkblue).make().p16().w40(context);
  }
}

