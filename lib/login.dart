import 'package:ecomerce/home.dart';
import 'package:ecomerce/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  bool changeButton=false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,),
          SizedBox(height: 16.0),
          Text("WELCOME $name",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,
          fontSize: 22),),
          SizedBox(height: 16.0),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
          child: Column(children: [
          TextFormField(decoration: InputDecoration(hintText: "Username",labelText: "Enter Username",
          ),
            onChanged: (value){
            name=value;
            setState(() {

            });
            },
          ),
            TextFormField(obscureText:true,decoration: InputDecoration(hintText: "Password",labelText: "Enter Password"),
            ),
            SizedBox(height: 16.0,),

            InkWell(
              onTap: (){
                setState(() {
                  changeButton=true;
                });
                // Navigator.pushNamed(context, MyRoutes.homeRoutes);

              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                height: 40,
                width: changeButton?100:150,
                // color: Colors.red,
                alignment: Alignment.center,
                child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton?50:8)
                ),
              ),
            ),
            // ElevatedButton(child: Text("Login"),
            //     style: TextButton.styleFrom(minimumSize: Size(150,40)),
            //     onPressed: (){
            //   print("Login Clicked");
            // },
            // ),
          ]

          ),


         )


        ],

      ),
    );
  }
}
