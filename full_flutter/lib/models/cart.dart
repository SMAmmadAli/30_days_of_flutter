import 'package:full_flutter/models/catalogs.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;

  //Catalog Field
  late CatalogModel _catalog;

  //Collection of Ids
  final List<int> _itemIds = [];

  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Item in the Cart
  List<Item> get items => _itemIds.map((id) => 
      _catalog.getById(id)).toList();

  //Get Total Price
  num get totalPrice => 
    items.fold(0, (total, current)=>total + current.price);

  //Add Item
  void add(Item item){
    _itemIds.add(item.id.toInt());
  }

  //Remove Item
  void remove(Item item){
    _itemIds.remove(item.id);
  }
}
