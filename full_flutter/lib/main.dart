import 'package:flutter/material.dart';
import 'package:full_flutter/Pages/Login_page.dart';
import 'package:full_flutter/Pages/Home.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/utils/routes.dart';
import 'package:full_flutter/widgets/themes.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData()async{
    final CatalogJson = 
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(CatalogJson);
    var productData = decodedData("products");
    // List<Item> list =
    CatalogModel.items =
        List.from(productData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
        setState(() {});
  }

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
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
