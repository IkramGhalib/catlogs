
import 'package:ecomerce/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatlogImage extends StatelessWidget {
  final String image;

  const CatlogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset(
        image).box.rounded.p16.color(MyColor.darkblue).make().p16().w40(context);
  }
}

