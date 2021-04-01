import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

class TrendingNotifier extends ChangeNotifier {
  List<ProductModel> _trending = [];

  UnmodifiableListView<ProductModel> get trending =>
      UnmodifiableListView(_trending);

  addTrendingData(ProductModel data) {
    _trending.add(data);
    notifyListeners();
  }
}
