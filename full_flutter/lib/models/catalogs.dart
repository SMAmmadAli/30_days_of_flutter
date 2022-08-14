class CatalogModel {
 static List<Item> items = [
        // Item(
    //        id: 3,
    //         name: "M1 Macbook Air",
    //         desc: "Apple Macbook air with apple silicon",
    //         price: 1099,
    //         color: "#e0bfae",
    //         image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc"
    // ),
    // Item(
    //         id: 4,
    //         name: "Playstation 5",
    //         desc: "Sony Playstation 5th generation",
    //         price: 500,
    //         color: "#544ee4",
    //         image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMOMstwtmLnjFb3NHiDJ_kcQnueNVH-rv_3ps96HZmXlFumKWaiBqq_L4Uoyx3iFiNTrXNEbyB&usqp=CAc",
    // ),
    // Item(
    //   id: 5,
    //         name: "Airpods Pro",
    //         desc: "Apple Aipods Pro 1st generation",
    //         price: 200,
    //         color: "#e3e4e9",
    //         image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQROEs084z65psoo06zYl5R0tUzywOVKVQZzmzqCj3PDP1vVJTWv3gGwGMFENSy4qV4n7sEQjE&usqp=CAc",
    // ),
  ];
 Item getById(int id)=>
  items.firstWhere((element)=> element.id == id, orElse: null);

  Item getByPosition(int pos)=>items[pos];
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
