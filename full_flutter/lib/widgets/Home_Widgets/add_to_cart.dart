import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/models/cart.dart';
import 'package:full_flutter/models/catalogs.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;

  const AddToCart({Key? key,required this.catalog}) : super(key: key);
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
   final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      onPressed: () {
        if(!isInCart){
        isInCart = true;
        final _catalog = CatalogModel();
        _cart.catalog = _catalog;
        _cart.add(widget.catalog);
        setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Theme.of(context).primaryColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      child: isInCart?Icon(Icons.done): const Icon(CupertinoIcons.shopping_cart),
    );
  }
}