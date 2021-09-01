import 'package:ecomerce/models/catlogs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  final Items items;
  const ItemsWidget({Key? key, required this.items})
      :assert(items!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          print("${items.name} press");
        },
        leading: Image.asset(items.imageUrl),
        title: Text(items.name),
        subtitle: Text(items.desc),
        trailing: Text("\$${items.price}"),
      ),
    );
  }
}
