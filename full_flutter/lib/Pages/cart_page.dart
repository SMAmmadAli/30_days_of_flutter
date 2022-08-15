import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/models/cart.dart';
import 'package:full_flutter/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          "Cart",
          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _CartList(),
            ),
            Divider(),
            _cartTotal(),
          ],
        ),
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("\$${_cart.totalPrice}",
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).secondaryHeaderColor,
            )),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Buying not supported yet!"),));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Theme.of(context).primaryColor)),
          child: Text(
            "Buy",
            style: TextStyle( 
              fontSize: 18,
              color: Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ))
      ],
    ));
  }
}

class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty?  Center(child: Text("Nothing to show", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))): ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(
          Icons.done,
          color: Theme.of(context).primaryColor,
        ),
        trailing: IconButton(
          icon: Icon(CupertinoIcons.minus_circle, color: Theme.of(context).primaryColor),
          onPressed: () {
            _cart.remove(_cart.items[index]);
            setState(() {});
          },
        ),
        title: Text(_cart.items[index].name,
            style: TextStyle(
              fontSize: 28,
              color: Theme.of(context).secondaryHeaderColor,
            )),
      ),
    );
  }
}
