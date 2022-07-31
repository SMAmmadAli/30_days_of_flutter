import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.blueGrey  ,
        // fontFamily: GoogleFonts.poiretOne().fontFamily,
        cardColor: Colors.white,
        canvasColor: creameColor,
        //buttonColor ke jaga primaryColor likha hai
        primaryColor: darkbluish,
        //accent color ke jaga secondaryHeaderColor use kara hai
        secondaryHeaderColor: darkbluish,
        // buttonTheme: ButtonThemeData(
        // buttonColor: darkbluish,
        // ),
        appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        // textTheme: Theme.of(context).textTheme,
        ),
  );
  static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: darkCreameColor,
        //buttonColor ke jaga primaryColor likha hai
        primaryColor: lightbluish,
        //accent color ke jaga secondaryHeaderColor use kara hai
        secondaryHeaderColor: Colors.white,
        // buttonTheme: ButtonThemeData(
        // buttonColor: lightbluish,
        // ),
        appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white)),
  );
  // color
  static Color creameColor = const Color(0xfff5f5f5);
  static Color darkCreameColor = Colors.grey.shade900;
  static Color darkbluish = const Color(0xff403b58);
  static Color lightbluish = Colors.indigo.shade500;
}