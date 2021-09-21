//Catalog list

import 'package:ecomerce/models/catlogs.dart';
import 'package:ecomerce/utils/colors.dart';
import 'package:ecomerce/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home2.dart';
import 'package:velocity_x/velocity_x.dart';

import '../home_details.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
const CatalogList({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return ListView.builder(
shrinkWrap: true,
itemCount: CatlogModel.items.length,
itemBuilder: (context,index){
final catalog=CatlogModel.items[index];
return InkWell(
  onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home_details(catalog: catalog,)));
  },
    
    child: CatalogItems(catalog: catalog,));
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
             Hero(tag: Key(catalog.id.toString()),
                 child: CatlogImage(image: catalog.imageUrl)),
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
                          print("Buy button clicked");

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