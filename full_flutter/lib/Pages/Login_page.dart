import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
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
            fontSize: 24,
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
            height: 20.0,
          ),
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("Hello Ammad");
            },
          )
              ],
            ),
          ),
        ],
      ));
     }
}