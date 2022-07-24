import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      // color: Colors.lightBlueAccent,
      shadowColor: Colors.blue,
      // elevation: 5,
      child: ListTile(
        onTap: () => print("${item.name} Pressed"),
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        // trailing: Text(item.price.toString()),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.2,
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
