import 'package:flutter/material.dart';

class CatlogModel {
  // static List<Items>items;
// }
  static List<Items>items=[
    Items(

      id: 1,
      name:"IPhone Pro max",
      desc: "Mobile Phone of Apple Company",
      imageUrl: 'assets/images/login.png',
      color: "#33505a",
      price: 22,


  )];
}

class Items {
  final String name;
  final int id;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Items(
      {required this.name, required this.id, required this.desc, required this.price, required this.color, required this.imageUrl});

  factory Items.fromJson(Map<String, dynamic> map) {
    return Items(
        name: map["name"],
        id: map["id"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        imageUrl: map["imageUrl"]
    );
  }

  toMap() =>
      {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageUrl": imageUrl,

      };
}
