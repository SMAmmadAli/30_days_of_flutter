import 'package:flutter/material.dart';
import 'package:full_flutter/Pages/Home.dart';
import 'package:full_flutter/Pages/Login_page.dart';
import 'package:full_flutter/Pages/cart_page.dart';
import 'package:full_flutter/models/grid_view_item.dart';
import 'package:full_flutter/utils/routes.dart';
import 'package:full_flutter/widgets/themes.dart';
import 'package:full_flutter/widgets/veloctiyXUI.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darktheme(context),
      theme: MyTheme.lighttheme(context),

      initialRoute: MyRoutes.homeRoute,

      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.gridViewRoute: (context) => GridViewPage(),
        MyRoutes.VelXUI: (context) => XUI(),
        MyRoutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
