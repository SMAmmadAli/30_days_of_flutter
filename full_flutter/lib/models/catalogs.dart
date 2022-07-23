class CatalogModel {
 static List<Item> items = [
    Item(
      id: 1,
      name: 'DSLR',
      desc: 'DSLR (Digital Single-Lens Reflex)',
      price: 999,
      color: '#00ac51',
      image:
          'data:image/jpeg;base64,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',
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      { required this.id,
         required this.name,
         required this.desc,
         required this.price,
         required this.color,
         required this.image});

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
  "id" : id,
  "name" : name,
  "desc" : desc,
  "price" : price,
  "color" : color,
  "image" : image,
  };
 }
