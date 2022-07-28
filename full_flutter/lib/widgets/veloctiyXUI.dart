import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/widgets/themes.dart';

class XUI extends StatefulWidget {
  @override
  State<XUI> createState() => _XUIState();
}

class _XUIState extends State<XUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creameColor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catologHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  Expanded(child: CatalogList())
                else
                  (Center(
                    child: CircularProgressIndicator(),
                  ))
              ],
            ),
          ),
        ));
  }
}

class catologHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
            color: MyTheme.darkbluish,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none,
          ),
        ),
        Text(
          "Trending products",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
      itemCount: CatalogModel.items.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      padding: EdgeInsets.only(bottom: 16, top: 16),
      margin: EdgeInsets.all(20),
      child: Row(
        children: [
          catalogImage(
            image: catalog.image,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(catalog.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyTheme.darkbluish,
                    )),
                Text(catalog.desc,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                ),
                ),
                Expanded(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${catalog.price}",
                        textScaleFactor: 1.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkbluish),
                                shape: MaterialStateProperty.all(StadiumBorder())
                                ),
                        child: Text("Buy"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// CatalogImage

class catalogImage extends StatelessWidget {
  final String image;
  const catalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(image),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: MyTheme.creameColor),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 3,
    );
  }
}
