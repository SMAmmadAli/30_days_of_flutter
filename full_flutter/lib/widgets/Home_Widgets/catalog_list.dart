import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/Pages/home_detail_page.dart';
import 'package:full_flutter/models/cart.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/utils/routes.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.CartRoute),
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(CupertinoIcons.cart, color: Colors.white,),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final catalog = CatalogModel.items[index];
            return InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeDetailPage(
                              catalog: catalog,
                            ))),
                child: CatalogItem(catalog: catalog));
          },
          itemCount: CatalogModel.items.length,
        ));
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
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20),
          ),
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Hero(
            tag: Key("catalog.id"),
            child: catalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(catalog.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).secondaryHeaderColor,
                    )),
                Text(
                  catalog.desc,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                Expanded(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${catalog.price}",
                        textScaleFactor: 1.2,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      _AddToCart(catalog : catalog )
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

class _AddToCart extends StatefulWidget {
  final Item catalog;

  const _AddToCart({Key? key,required this.catalog}) : super(key: key);
  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        isAdded = true;
        final _catalog = CatalogModel();
        final _cart = CartModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isAdded?Icon(Icons.done): Text("Add to cart"),
    );
  }
}
