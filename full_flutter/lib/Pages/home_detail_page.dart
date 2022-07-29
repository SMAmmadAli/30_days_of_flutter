import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : assert(catalog != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creameColor,
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key("catalog.id"),
              child: Image.network(catalog.image)),
        ],),
      ),
      
    );
  }
}
