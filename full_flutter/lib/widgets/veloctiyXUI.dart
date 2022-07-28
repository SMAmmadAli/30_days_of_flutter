import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/utils/routes.dart';

class XUI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Card(
      shadowColor: Colors.blue,
      child: ListTile(
        onTap: () => Navigator.pushNamed(context, MyRoutes.gridViewRoute),
        leading: Image.network("https://pixabay.com/images/search/png/"),
        title: Text("Yellow Color Car"),
        subtitle: Text("Car"),
        trailing: ElevatedButton(onPressed: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
        child: Text("Click me"),),
      ),
    );
  }
}