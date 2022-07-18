import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:full_flutter/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  String name = "";
  bool changeButton = false;
 
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
            Text("Login Page\n$name",
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
                    onChanged: (value){
                      name = value;
                    setState(() {});
                      }                    
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
            
            InkWell(
              onTap: ()async{
                setState(() {
                  changeButton = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 40,
                width: changeButton?50:120,
                alignment: Alignment.center,
                child: changeButton? Icon(
                  Icons.done,
                  color: Colors.white,
                ):Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  // shape: changeButton? BoxShape.circle : BoxShape.rectangle
                  borderRadius: BorderRadius.circular(changeButton?40:8.0),
                ),
              ),
            )

            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(
            //     minimumSize: Size(150.0,40.0),
            //     backgroundColor: Colors.blueAccent,
            //     primary: Colors.white,
            //     textStyle: TextStyle(
            //       fontWeight: FontWeight.w700,
            //       fontSize: 18,
            //       )
            //   ),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            // ),
                ],
              ),
            ),
          ],
        ),
      ));
     }
}