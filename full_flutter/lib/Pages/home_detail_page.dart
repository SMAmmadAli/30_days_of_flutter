import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';
import 'package:full_flutter/widgets/themes.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${catalog.price}",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                          color: Colors.red[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all(StadiumBorder())),
                          child: Text("Add to cart"),
                        ),
                      )
                    ],
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Hero(
                  tag: Key("catalog.id"),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Center(
                      child: Image.network(
                        catalog.image,
                        height: MediaQuery.of(context).size.height * 0.35,
                      ),
                    ),
                  )),
            ),
            Expanded(
              child: (
                Container(  
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      catalog.id.toString(),
                      style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                color: Theme.of(context).cardColor,
                // constraints: BoxConstraints.tightForFinite(width: 200),
                transform: Matrix4.rotationZ(0.05),
              )),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(catalog.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Theme.of(context).secondaryHeaderColor,
                        )),
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
