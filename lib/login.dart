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
  bool _secureText=false;
  final _formKey = GlobalKey<FormState>();
  //form if validation true run this code other wise run 1=>
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column
                (children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Username",labelText: "Username",labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                  border: OutlineInputBorder()
              ),
                //=>1 run this code
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
                SizedBox(height: 16.0,),
                TextFormField(
                  obscureText:_secureText,
                  decoration: InputDecoration(
                      hintText: "Enter Password",labelText: "Password",
                      labelStyle: TextStyle(fontSize: 20,color: Colors.black),
                  border: OutlineInputBorder(),
                    suffix: IconButton(icon: Icon(_secureText?Icons.remove_red_eye:Icons.security),onPressed: () {
                      setState(() {
                        _secureText=!_secureText;
                      });
                    },)

                  ),
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
          ),


         )


        ],

      ),
    );
  }
}
