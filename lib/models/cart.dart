// ignore: unused_import
// import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';

import 'mlapp.dart';

class CartModel {
  // ignore: unused_field
  late CatalogModel _catalog;

  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  Iterable get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
