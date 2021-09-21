import 'package:ecomerce/models/catlogs.dart';
import 'package:ecomerce/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home_details extends StatelessWidget {
  final Items catalog;

  const Home_details({Key? key, required this.catalog}) : assert(catalog!=null),
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      //widget by container
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl4.red800.bold.make(),
            ElevatedButton(onPressed: (){
              print("Buy button clicked");
            },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyColor.darkblue),
                    shape: MaterialStateProperty.all(
                        StadiumBorder()
                    )
                ),
                child: "Buy".text.make()).w20(context)
          ],
        ).p16(),
      ),


      backgroundColor: Colors.white70,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(tag: Key(catalog.id.toString()),
                child: Image.asset(catalog.imageUrl,)).p32(),
            Expanded(
                child: VxArc(
                  height: 10.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
              color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.xl2.bold.make(),
                        catalog.desc.text.make()
                      ],
                    ).py32(),
            ),
                ))
          ],
        ),
      ),

    );
  }
}
