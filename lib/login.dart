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
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }
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
          child: Form(
            key: _formKey,
            child: Column
              (children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Username",labelText: "Enter Username",
            ),
              validator: (value){
              if(value!.isEmpty){
                return "Please Enter Your Email";

              }
              else null;
              },
              onChanged: (value){
              name=value;
              setState(() {

              });
              },
            ),
              TextFormField(
                obscureText:true,
                decoration: InputDecoration(
                    hintText: "Password",labelText: "Enter Password"),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please Enter Password";

                  }
                  else if(value.length<6){
                    return "Password Should be 6";
                  }
                  else null;
                },
              ),

              SizedBox(height: 16.0,),
              //inkwell wrap with widget material
              Material(
                color: Colors.red,
                  borderRadius: BorderRadius.circular(changeButton?50:8),
                child: InkWell(
                  onTap: () =>moveToHome(context),
                    // child: AnimatedContainer
                  child: Ink(
                    // duration: Duration(seconds: 2),
                    height: 40,
                    width: changeButton?100:150,
                    // color: Colors.red,
                    // alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                      // borderRadius: BorderRadius.circular(changeButton?50:8)
                    ),
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
          ),


         )


        ],

      ),
    );
  }
}
