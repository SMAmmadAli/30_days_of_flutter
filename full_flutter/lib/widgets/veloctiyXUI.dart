import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/widgets/themes.dart';

import 'Home_Widgets/catalog_header.dart';
import 'Home_Widgets/catalog_list.dart';


class XUI extends StatefulWidget {
  @override
  State<XUI> createState() => _XUIState();
}

class _XUIState extends State<XUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catologHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  Expanded(child: CatalogList())
                else Center(child: Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: (CircularProgressIndicator()),
                ))
              ],
            ),
          ),
        ));
  }
}