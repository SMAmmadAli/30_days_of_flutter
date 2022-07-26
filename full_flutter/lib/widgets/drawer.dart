import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/utils/routes.dart';

class myDrawer extends StatelessWidget {

final myImage = "assets/images/Ammad.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: Text("S M Ammad Ali"),
                accountEmail: Text("smammadali05@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(myImage),
                )
                ),                
              ),
            ListTile(
              leading: 
                Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                  ),
              title: 
                Text("Velocity X UI",
                textScaleFactor: 1.2,
                style: TextStyle(
                  letterSpacing: 4,
                  color: Colors.white,
                ),
                ),
                onTap: () => Navigator.pushNamed(context, MyRoutes.VelXUI),
            ),
            ListTile(
              leading: 
                Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
              title: 
                Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),
            ListTile(
              leading: 
                Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                  ),
              title: 
                Text("Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),            
          ],
        ),
      ),
    );
  }
}
