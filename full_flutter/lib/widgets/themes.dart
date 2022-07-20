import 'package:flutter/material.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.blueGrey  ,
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
}