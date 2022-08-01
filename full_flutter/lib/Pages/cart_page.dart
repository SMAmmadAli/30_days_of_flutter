import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.all(32.0),
              child: Expanded(child: _CartList(),),
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
  const _cartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("\$349",
                style: TextStyle(
                  fontSize: 28,
                  color: Theme.of(context).secondaryHeaderColor,
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
                child: Text("Buy",
                style: TextStyle(
                  fontSize: 18,
                  color: Theme.of(context).secondaryHeaderColor,),
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => 
      ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(icon: Icon(Icons.delete),
        onPressed: (){},
        ),
         title: Text("Item 1"),
      ),
      
    );
  }
}