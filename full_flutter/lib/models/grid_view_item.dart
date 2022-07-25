import 'package:flutter/material.dart';
import 'package:full_flutter/models/catalogs.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? (GridView.builder(
              gridDelegate: const
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    ),
              itemCount: CatalogModel.items.length,
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                  elevation: 5.0,
                    shadowColor: Colors.blue,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        child: Text(item.name,
                                    style: const TextStyle(color: Colors.white)),
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: const BoxDecoration(
                                      color: Colors.lightBlue
                                    ),
                                    ),
                      child: Image.network(item.image),
                      footer: Container(
                        child: Text(item.price.toString(),
                                    style: const TextStyle(color: Colors.white)),
                                    padding: const EdgeInsets.all(12.0),
                                    decoration: const BoxDecoration(
                                      color: Colors.black54,
                                    ),
                                    ),
                    ));
              },
            ))
          :const Center(
              child: CircularProgressIndicator(),
            ),
    ));
  }
}
