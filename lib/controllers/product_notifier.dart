import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

class ProductNotifier extends ChangeNotifier {
  List<ProductModel> _product = [];

  UnmodifiableListView<ProductModel> get product =>
      UnmodifiableListView(_product);

  addproductData(ProductModel data) {
    _product.add(data);
    notifyListeners();
  }
}
