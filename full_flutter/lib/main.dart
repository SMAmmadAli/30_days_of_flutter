import 'package:flutter/material.dart';
import 'package:full_flutter/Pages/Login_page.dart';
import 'package:full_flutter/Pages/second_page.dart';
import 'package:full_flutter/utils/routes.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark
        ),
      theme: ThemeData(
        primarySwatch: Colors.lime,
        // primaryTextTheme: GoogleFonts.
        ),

      initialRoute: "/",

      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );

  }
}