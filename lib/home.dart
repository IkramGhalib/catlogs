import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Text("WELCOME",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,
              fontSize: 22),),
        ],
      ),
    );
  }
}
