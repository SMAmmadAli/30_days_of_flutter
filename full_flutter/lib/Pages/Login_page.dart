import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:full_flutter/utils/routes.dart';

class LoginPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: 
          [
            Image.asset("assets/images/login_image.png",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Login Page",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Name",
                      labelText: "Username"
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your Password",
                labelText: "Password"
            )
            ),
            SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: TextButton.styleFrom(
                minimumSize: Size(150.0,40.0),
                backgroundColor: Colors.blueAccent,
                primary: Colors.white,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  )
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
            )
                ],
              ),
            ),
          ],
        ),
      ));
     }
}