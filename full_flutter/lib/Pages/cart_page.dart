import 'package:flutter/material.dart';
import 'package:full_flutter/widgets/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
            child: Text(
          "Cart",
          style: TextStyle(color: MyTheme.darkbluish),
        )),
      ),
    );
  }
}
