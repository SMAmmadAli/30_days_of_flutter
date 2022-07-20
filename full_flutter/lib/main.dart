import 'package:flutter/material.dart';
import 'package:full_flutter/Pages/Login_page.dart';
import 'package:full_flutter/Pages/Home.dart';
import 'package:full_flutter/utils/routes.dart';
import 'package:full_flutter/widgets/themes.dart';


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
      darkTheme: MyTheme.darktheme(context),
      theme: MyTheme.lighttheme(context),

      initialRoute: MyRoutes.homeRoute,

      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );

  }
}