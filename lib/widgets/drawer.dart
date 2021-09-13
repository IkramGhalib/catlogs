import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://www.google.com/search?q=ikramghalib&rlz=1C1SQJL_enPK961PK961&sxsrf=AOaemvJeSe1nBs_yRPM-OPEwiiXKWWVb2A:1630387811400&source=lnms&tbm=isch&sa=X&ved=2ahUKEwidsuDyw9ryAhWlmFwKHSoEBBcQ_AUoAXoECAEQAw&biw=1366&bih=625#imgrc=a7KtTjyeR1m8OM";

    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,

                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.red),
                  accountName: Text("Ikram"),
                  accountEmail: Text("IkramGhalib@gmail.com"),
                  // currentAccountPicture: Image.network(imageUrl),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/login.png"),
                    // backgroundImage: NetworkImage(imageUrl),

                  ),
                )
            ),
            //Left icon and title
            ListTile(
              leading:
              Icon(

                CupertinoIcons.profile_circled,color: Colors.white,),
              title: Text("Profile",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading:
              Icon(
                CupertinoIcons.settings,color: Colors.white,),
              title: Text("Sitting",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading:
              Icon(
                CupertinoIcons.bell,color: Colors.white,),
              title: Text("Notification",textScaleFactor: 1.5,style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
