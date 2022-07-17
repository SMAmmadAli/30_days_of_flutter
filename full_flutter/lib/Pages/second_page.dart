import 'package:flutter/material.dart';
import 'package:full_flutter/utils/routes.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {

   final String sentance = "Hello Flutter ";
   final double bnum = 2.35;
   final String name = "Babar Azam";
   final int num = 56;
   final bool isMale = true;
   var day = "Friday";
    const pi = 3.142;

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Catalog App")),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(100.0),
                   child: Container(
                      child: Text("$sentance $bnum \n$name \n$num")
                    
                ),
                 ),
                SizedBox(
                  height: 40.0
                ),
                ElevatedButton(
                child: Text("Go to Login Page"),
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
                  Navigator.pushNamed(context, MyRoutes.loginRoute);
                },
              )
              ],
            ),
          ),
        ),
        drawer: Drawer(),
        
      );
  }
}