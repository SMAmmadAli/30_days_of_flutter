import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.blueGrey  ,
        // fontFamily: GoogleFonts.poiretOne().fontFamily,
        appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // textTheme: Theme.of(context).textTheme,
        ),
  );
  static ThemeData darktheme(BuildContext context) => ThemeData(
       brightness: Brightness.dark,
  );
  // color
  static Color creameColor = const Color(0xfff5f5f5);
  static Color darkbluish = const Color(0xff403b58);
}