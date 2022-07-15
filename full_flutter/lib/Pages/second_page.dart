import 'package:flutter/material.dart';

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
          child: Container(
            child: Text("$sentance $bnum \n$name \n$num")
          ),
        ),
        drawer: Drawer(),
      );
  }
}